# 1. Use the official Node.js image as the base
FROM node:18-alpine

# 2. Set the working directory inside the container
WORKDIR /usr/src/app

# 3. Copy package.json and package-lock.json to the container
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the application files to the container
COPY . .

# 6. Run tests
RUN npm run test

# 7. Build the application
RUN npm run build

# 8. Expose the application port (if your app uses a specific port, e.g., 3000)
EXPOSE 3000

# 9. Define the command to start the application
CMD ["npm", "start"]
