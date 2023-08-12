FROM node:16-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY ./src .

EXPOSE 3000

CMD ["node", "index.js"]