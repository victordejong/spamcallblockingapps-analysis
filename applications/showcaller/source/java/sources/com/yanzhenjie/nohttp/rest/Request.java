package com.yanzhenjie.nohttp.rest;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.BasicRequest;
import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.RequestMethod;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/Request.class */
public abstract class Request<Result> extends BasicRequest<Request> {
    private String mCacheKey;
    private CacheMode mCacheMode;

    public Request(String str) {
        this(str, RequestMethod.GET);
    }

    public Request(String str, RequestMethod requestMethod) {
        super(str, requestMethod);
        this.mCacheMode = CacheMode.DEFAULT;
    }

    public String getCacheKey() {
        return TextUtils.isEmpty(this.mCacheKey) ? url() : this.mCacheKey;
    }

    public CacheMode getCacheMode() {
        return this.mCacheMode;
    }

    public abstract Result parseResponse(Headers headers, byte[] bArr);

    public Request setCacheKey(String str) {
        this.mCacheKey = str;
        return this;
    }

    public Request setCacheMode(CacheMode cacheMode) {
        this.mCacheMode = cacheMode;
        return this;
    }
}
