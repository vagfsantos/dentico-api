FROM ruby:2.5
WORKDIR /usr/dentico

COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install
EXPOSE 4567
COPY . .

CMD ["rerun", "./app/main.rb"]