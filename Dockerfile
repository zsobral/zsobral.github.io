FROM ruby:alpine

WORKDIR /app

RUN apk add --no-cache build-base

RUN gem install bundler:2.0.1

COPY Gemfile ./

COPY . .

RUN bundle install

EXPOSE 4000

CMD [ "bundle", "exec", "jekyll", "serve" ]
