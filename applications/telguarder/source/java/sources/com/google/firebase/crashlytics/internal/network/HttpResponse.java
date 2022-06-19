package com.google.firebase.crashlytics.internal.network;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/network/HttpResponse.class */
public class HttpResponse {
    private final String body;
    private final int code;

    public HttpResponse(int i, String str) {
        this.code = i;
        this.body = str;
    }

    public String body() {
        return this.body;
    }

    public int code() {
        return this.code;
    }
}
