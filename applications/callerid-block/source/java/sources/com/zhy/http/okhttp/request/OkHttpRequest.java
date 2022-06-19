package com.zhy.http.okhttp.request;

import com.zhy.http.okhttp.callback.Callback;
import com.zhy.http.okhttp.utils.Exceptions;
import java.util.Map;
import okhttp3.Headers$Builder;
import okhttp3.Request;
import okhttp3.RequestBody;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/request/OkHttpRequest.class */
public abstract class OkHttpRequest {
    protected Request.Builder builder = new Request.Builder();
    protected Map<String, String> headers;

    /* renamed from: id */
    protected int f12599id;
    protected Map<String, String> params;
    protected Object tag;
    protected String url;

    public OkHttpRequest(String str, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        this.url = str;
        this.tag = obj;
        this.params = map;
        this.headers = map2;
        this.f12599id = i;
        if (str == null) {
            Exceptions.illegalArgument("url can not be null.", new Object[0]);
        }
        initBuilder();
    }

    private void initBuilder() {
        this.builder.url(this.url).tag(this.tag);
        appendHeaders();
    }

    protected void appendHeaders() {
        Headers$Builder headers$Builder = new Headers$Builder();
        Map<String, String> map = this.headers;
        if (map == null || map.isEmpty()) {
            return;
        }
        for (String str : this.headers.keySet()) {
            headers$Builder.add(str, this.headers.get(str));
        }
        this.builder.headers(headers$Builder.build());
    }

    public RequestCall build() {
        return new RequestCall(this);
    }

    protected abstract Request buildRequest(RequestBody requestBody);

    protected abstract RequestBody buildRequestBody();

    public Request generateRequest(Callback callback) {
        return buildRequest(wrapRequestBody(buildRequestBody(), callback));
    }

    public int getId() {
        return this.f12599id;
    }

    protected RequestBody wrapRequestBody(RequestBody requestBody, Callback callback) {
        return requestBody;
    }
}
