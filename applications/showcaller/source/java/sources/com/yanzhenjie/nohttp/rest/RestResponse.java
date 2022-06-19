package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.Headers;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/RestResponse.class */
public class RestResponse<T> implements Response<T> {
    private final Headers headers;
    private final boolean isFromCache;
    private Exception mException;
    private final long mNetworkMillis;
    private Request<T> request;
    private final T result;

    public RestResponse(Request<T> request, boolean z, Headers headers, T t, long j, Exception exc) {
        this.request = request;
        this.isFromCache = z;
        this.headers = headers;
        this.result = t;
        this.mNetworkMillis = j;
        this.mException = exc;
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public T get() {
        return this.result;
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public Exception getException() {
        return this.mException;
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public Headers getHeaders() {
        return this.headers;
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public long getNetworkMillis() {
        return this.mNetworkMillis;
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public Object getTag() {
        return this.request.getTag();
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public boolean isFromCache() {
        return this.isFromCache;
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public boolean isSucceed() {
        return this.mException == null;
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public Request<T> request() {
        return this.request;
    }

    @Override // com.yanzhenjie.nohttp.rest.Response
    public int responseCode() {
        return this.headers.getResponseCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Headers headers = getHeaders();
        if (headers != null) {
            for (String str : headers.keySet()) {
                for (String str2 : headers.getValues(str)) {
                    if (str != null) {
                        sb.append(str);
                        sb.append(": ");
                    }
                    sb.append(str2);
                    sb.append("\n");
                }
            }
        }
        T t = get();
        if (t != null) {
            sb.append(t.toString());
        }
        return sb.toString();
    }
}
