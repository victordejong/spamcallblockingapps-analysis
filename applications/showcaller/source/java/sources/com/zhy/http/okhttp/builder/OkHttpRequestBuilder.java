package com.zhy.http.okhttp.builder;

import com.zhy.http.okhttp.builder.OkHttpRequestBuilder;
import com.zhy.http.okhttp.request.RequestCall;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/builder/OkHttpRequestBuilder.class */
public abstract class OkHttpRequestBuilder<T extends OkHttpRequestBuilder> {
    protected Map<String, String> headers;

    /* renamed from: id */
    protected int f40313id;
    protected Map<String, String> params;
    protected Object tag;
    protected String url;

    public T addHeader(String str, String str2) {
        if (this.headers == null) {
            this.headers = new LinkedHashMap();
        }
        this.headers.put(str, str2);
        return this;
    }

    public abstract RequestCall build();

    public T headers(Map<String, String> map) {
        this.headers = map;
        return this;
    }

    /* renamed from: id */
    public T m551id(int i) {
        this.f40313id = i;
        return this;
    }

    public T tag(Object obj) {
        this.tag = obj;
        return this;
    }

    public T url(String str) {
        this.url = str;
        return this;
    }
}
