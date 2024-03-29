FROM python:3.7.3-alpine3.9

RUN apk add --update --no-cache \
    build-base \
    python-dev \
    zlib-dev \
    libxml2-dev \
    libxslt-dev \
    openssl-dev \
    libffi-dev

ADD pip_requirements.txt /tmp/pip_requirements.txt
RUN pip install -r /tmp/pip_requirements.txt

ADD ./app /usr/src/app
WORKDIR /usr/src/app
