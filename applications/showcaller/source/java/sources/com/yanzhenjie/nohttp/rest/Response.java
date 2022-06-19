package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.Headers;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/Response.class */
public interface Response<T> {
    T get();

    Exception getException();

    Headers getHeaders();

    long getNetworkMillis();

    Object getTag();

    boolean isFromCache();

    boolean isSucceed();

    Request<T> request();

    int responseCode();
}
