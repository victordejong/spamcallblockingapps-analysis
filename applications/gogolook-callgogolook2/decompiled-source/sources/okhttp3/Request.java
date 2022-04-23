package okhttp3;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
/* loaded from: classes3-dex2jar.jar:okhttp3/Request.class */
public final class Request {
    @Nullable
    public final RequestBody body;
    @Nullable
    public volatile CacheControl cacheControl;
    public final Headers headers;
    public final String method;
    public final Map<Class<?>, Object> tags;
    public final HttpUrl url;

    /* loaded from: classes3-dex2jar.jar:okhttp3/Request$Builder.class */
    public static class Builder {
        @Nullable
        public RequestBody body;
        public Headers.Builder headers;
        public String method;
        public Map<Class<?>, Object> tags;
        @Nullable
        public HttpUrl url;

        public Builder() {
            this.tags = Collections.emptyMap();
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        public Builder(Request request) {
            this.tags = Collections.emptyMap();
            this.url = request.url;
            this.method = request.method;
            this.body = request.body;
            this.tags = request.tags.isEmpty() ? Collections.emptyMap() : new LinkedHashMap<>(request.tags);
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
            if (cacheControl2.isEmpty()) {
                removeHeader("Cache-Control");
                return this;
            }
            header("Cache-Control", cacheControl2);
            return this;
        }

        public Builder delete() {
            delete(Util.EMPTY_REQUEST);
            return this;
        }

        public Builder delete(@Nullable RequestBody requestBody) {
            method("DELETE", requestBody);
            return this;
        }

        public Builder get() {
            method("GET", null);
            return this;
        }

        public Builder header(String str, String str2) {
            this.headers.set(str, str2);
            return this;
        }

        public Builder headers(Headers headers) {
            this.headers = headers.newBuilder();
            return this;
        }

        public Builder method(String str, @Nullable RequestBody requestBody) {
            if (str == null) {
                throw new NullPointerException("method == null");
            } else if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            } else if (requestBody != null && !HttpMethod.permitsRequestBody(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            } else if (requestBody != null || !HttpMethod.requiresRequestBody(str)) {
                this.method = str;
                this.body = requestBody;
                return this;
            } else {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
        }

        public Builder post(RequestBody requestBody) {
            method("POST", requestBody);
            return this;
        }

        public Builder put(RequestBody requestBody) {
            method("PUT", requestBody);
            return this;
        }

        public Builder removeHeader(String str) {
            this.headers.removeAll(str);
            return this;
        }

        public <T> Builder tag(Class<? super T> cls, @Nullable T t) {
            if (cls != null) {
                if (t == null) {
                    this.tags.remove(cls);
                } else {
                    if (this.tags.isEmpty()) {
                        this.tags = new LinkedHashMap();
                    }
                    this.tags.put(cls, cls.cast(t));
                }
                return this;
            }
            throw new NullPointerException("type == null");
        }

        public Builder url(String str) {
            String str2;
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str2 = "http:" + str.substring(3);
                } else {
                    str2 = str;
                    if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                        str2 = "https:" + str.substring(4);
                    }
                }
                url(HttpUrl.get(str2));
                return this;
            }
            throw new NullPointerException("url == null");
        }

        public Builder url(HttpUrl httpUrl) {
            if (httpUrl != null) {
                this.url = httpUrl;
                return this;
            }
            throw new NullPointerException("url == null");
        }
    }

    public Request(Builder builder) {
        this.url = builder.url;
        this.method = builder.method;
        this.headers = builder.headers.build();
        this.body = builder.body;
        this.tags = Util.immutableMap(builder.tags);
    }

    @Nullable
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

    @Nullable
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

    @Nullable
    public <T> T tag(Class<? extends T> cls) {
        return (T) cls.cast(this.tags.get(cls));
    }

    public String toString() {
        return "Request{method=" + this.method + ", url=" + this.url + ", tags=" + this.tags + '}';
    }

    public HttpUrl url() {
        return this.url;
    }
}
