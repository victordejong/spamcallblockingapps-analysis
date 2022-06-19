package com.yanzhenjie.nohttp.rest;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/Interceptor.class */
public interface Interceptor {
    <T> Response<T> intercept(RequestHandler requestHandler, Request<T> request);
}
