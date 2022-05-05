package com.amazonaws;

import com.amazonaws.http.HttpResponse;
/* loaded from: classes-dex2jar.jar:com/amazonaws/Response.class */
public final class Response<T> {
    public final T response;

    public Response(T t, HttpResponse httpResponse) {
        this.response = t;
    }

    public T getAwsResponse() {
        return this.response;
    }
}
