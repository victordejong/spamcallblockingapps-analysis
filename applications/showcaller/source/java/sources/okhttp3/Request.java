package okhttp3;

import com.zhy.http.okhttp.OkHttpUtils;
import java.net.URL;
import java.util.List;
import java.util.Objects;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
/* loaded from: classes2-dex2jar.jar:okhttp3/Request.class */
public final class Request {
    final RequestBody body;
    private volatile CacheControl cacheControl;
    final Headers headers;
    final String method;
    final Object tag;
    final HttpUrl url;

    /* loaded from: classes2-dex2jar.jar:okhttp3/Request$Builder.class */
    public static class Builder {
        RequestBody body;
        Headers.Builder headers;
        String method;
        Object tag;
        HttpUrl url;

        public Builder() {
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        Builder(Request request) {
            this.url = request.url;
            this.method = request.method;
            this.body = request.body;
            this.tag = request.tag;
            this.headers = request.headers.newBuilder();
        }

        public Builder addHeader(String str, String str2) {
            this.headers.add(str, str2);
            return this;
        }

        public Request build() {
            if (this.url != null) {
                return new Request(this);
            }
            throw new IllegalStateException("url == null");
        }

        public Builder cacheControl(CacheControl cacheControl) {
            String cacheControl2 = cacheControl.toString();
            return cacheControl2.isEmpty() ? removeHeader(com.yanzhenjie.nohttp.Headers.HEAD_KEY_CACHE_CONTROL) : header(com.yanzhenjie.nohttp.Headers.HEAD_KEY_CACHE_CONTROL, cacheControl2);
        }

        public Builder delete() {
            return delete(Util.EMPTY_REQUEST);
        }

        public Builder delete(RequestBody requestBody) {
            return method(OkHttpUtils.METHOD.DELETE, requestBody);
        }

        public Builder get() {
            return method("GET", null);
        }

        public Builder head() {
            return method(OkHttpUtils.METHOD.HEAD, null);
        }

        public Builder header(String str, String str2) {
            this.headers.set(str, str2);
            return this;
        }

        public Builder headers(Headers headers) {
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder method(String str, RequestBody requestBody) {
            Objects.requireNonNull(str, "method == null");
            if (str.length() != 0) {
                if (requestBody != null && !HttpMethod.permitsRequestBody(str)) {
                    throw new IllegalArgumentException("method " + str + " must not have a request body.");
                } else if (requestBody != null || !HttpMethod.requiresRequestBody(str)) {
                    this.method = str;
                    this.body = requestBody;
                    return this;
                } else {
                    throw new IllegalArgumentException("method " + str + " must have a request body.");
                }
            }
            throw new IllegalArgumentException("method.length() == 0");
        }

        public Builder patch(RequestBody requestBody) {
            return method(OkHttpUtils.METHOD.PATCH, requestBody);
        }

        public Builder post(RequestBody requestBody) {
            return method("POST", requestBody);
        }

        public Builder put(RequestBody requestBody) {
            return method(OkHttpUtils.METHOD.PUT, requestBody);
        }

        public Builder removeHeader(String str) {
            this.headers.removeAll(str);
            return this;
        }

        public Builder tag(Object obj) {
            this.tag = obj;
            return this;
        }

        public Builder url(String str) {
            String str2;
            Objects.requireNonNull(str, "url == null");
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str2 = "http:" + str.substring(3);
            } else {
                str2 = str;
                if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str2 = "https:" + str.substring(4);
                }
            }
            HttpUrl parse = HttpUrl.parse(str2);
            if (parse != null) {
                return url(parse);
            }
            throw new IllegalArgumentException("unexpected url: " + str2);
        }

        public Builder url(URL url) {
            Objects.requireNonNull(url, "url == null");
            HttpUrl httpUrl = HttpUrl.get(url);
            if (httpUrl != null) {
                return url(httpUrl);
            }
            throw new IllegalArgumentException("unexpected url: " + url);
        }

        public Builder url(HttpUrl httpUrl) {
            Objects.requireNonNull(httpUrl, "url == null");
            this.url = httpUrl;
            return this;
        }
    }

    Request(Builder builder) {
        this.url = builder.url;
        this.method = builder.method;
        this.headers = builder.headers.build();
        this.body = builder.body;
        Object obj = builder.tag;
        this.tag = obj == null ? this : obj;
    }

    public RequestBody body() {
        return this.body;
    }

    public CacheControl cacheControl() {
        CacheControl cacheControl = this.cacheControl;
        if (cacheControl == null) {
            cacheControl = CacheControl.parse(this.headers);
            this.cacheControl = cacheControl;
        }
        return cacheControl;
    }

    public String header(String str) {
        return this.headers.get(str);
    }

    public List<String> headers(String str) {
        return this.headers.values(str);
    }

    public Headers headers() {
        return this.headers;
    }

    public boolean isHttps() {
        return this.url.isHttps();
    }

    public String method() {
        return this.method;
    }

    public Builder newBuilder() {
        return new Builder(this);
    }

    public Object tag() {
        return this.tag;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.method);
        sb.append(", url=");
        sb.append(this.url);
        sb.append(", tag=");
        Object obj = this.tag;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }

    public HttpUrl url() {
        return this.url;
    }
}
