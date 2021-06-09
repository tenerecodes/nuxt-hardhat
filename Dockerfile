FROM node:14.16.0

WORKDIR /usr/src/app

COPY package*.json ./

COPY yarn.lock ./

RUN yarn

COPY . ./

RUN yarn build

EXPOSE 8545

CMD ["yarn", "dev"]