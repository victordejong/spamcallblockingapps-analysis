package com.freshchat.consumer.sdk.service;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/b.class */
public class C1824b<T> {
    private final T data;
    private final Status status;

    public C1824b(Status status, T t) {
        this.status = status;
        this.data = t;
    }

    public T getData() {
        return this.data;
    }

    public Status getStatus() {
        return this.status;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Response{Status=");
        m8728C.append(this.status);
        m8728C.append(", data=");
        m8728C.append(this.data);
        m8728C.append('}');
        return m8728C.toString();
    }
}
