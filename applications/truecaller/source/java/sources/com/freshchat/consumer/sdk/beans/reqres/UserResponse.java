package com.freshchat.consumer.sdk.beans.reqres;

import com.freshchat.consumer.sdk.beans.User;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/UserResponse.class */
public class UserResponse {
    private final int statusCode;
    private final User user;

    public UserResponse(int i, User user) {
        this.statusCode = i;
        this.user = user;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public User getUser() {
        return this.user;
    }
}
