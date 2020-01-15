FROM roangzero1/factorio-mod:luarocks5.3-alpine as base

RUN apk add --no-cache zlib-dev gcc musl-dev; \
  luarocks install faketorio; \
  apk del zlib-dev gcc musl-dev

LABEL "repository"="https://github.com/thattomperson/faketorio"
LABEL "homepage"="https://github.com/thattomperson/faketorio"
LABEL "maintainer"="ThatTomPerson <thomas@ttp.sh>"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]