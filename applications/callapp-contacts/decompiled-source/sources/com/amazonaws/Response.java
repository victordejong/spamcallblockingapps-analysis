package com.amazonaws;

import com.amazonaws.http.HttpResponse;
/* loaded from: classes-dex2jar.jar:com/amazonaws/Response.class */
public final class Response<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f6543a;

    /* renamed from: b  reason: collision with root package name */
    private final HttpResponse f6544b;

    public Response(T t, HttpResponse httpResponse) {
        this.f6543a = t;
        this.f6544b = httpResponse;
    }
}
