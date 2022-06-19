package com.freshchat.consumer.sdk.beans.reqres;

import com.freshchat.consumer.sdk.beans.User;
import e.m.e.d0.b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/UserRequest.class */
public class UserRequest {
    @b("jwtAuthToken")
    private String jwtIdToken;
    private User user;

    public String getJwtIdToken() {
        return this.jwtIdToken;
    }

    public User getUser() {
        return this.user;
    }

    public void setJwtIdToken(String str) {
        this.jwtIdToken = str;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UserRequest [user=");
        m8728C.append(this.user);
        m8728C.append("]");
        return m8728C.toString();
    }
}
