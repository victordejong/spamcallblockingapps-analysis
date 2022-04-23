package okhttp3;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\t\u0018��:\u00015BC\b��\u0012\u0006\u0010$\u001a\u00020!\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0016\u0010.\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d\u0012\u0004\u0012\u00020\u00190-¢\u0006\u0004\b3\u00104J\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0010\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u00112\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ%\u0010\u001a\u001a\u0004\u0018\u00018��\"\u0004\b��\u0010\u001c2\u000e\u0010\u001e\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u001d¢\u0006\u0004\b\u001a\u0010\u001fJ\u000f\u0010 \u001a\u00020\tH\u0016¢\u0006\u0004\b \u0010\u0014J\u000f\u0010$\u001a\u00020!H\u0007¢\u0006\u0004\b\"\u0010#R\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0004\u0010%\u001a\u0004\b\u0004\u0010\u0003R\u0013\u0010\b\u001a\u00020\u00058G@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\u0007R\u0019\u0010\u0010\u001a\u00020\r8\u0007@\u0006¢\u0006\f\n\u0004\b\u0010\u0010&\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010(\u001a\u00020'8F@\u0006¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0018\u0010*\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0019\u0010\u0015\u001a\u00020\t8\u0007@\u0006¢\u0006\f\n\u0004\b\u0015\u0010,\u001a\u0004\b\u0015\u0010\u0014R,\u0010.\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001d\u0012\u0004\u0012\u00020\u00190-8��@��X\u0080\u0004¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0019\u0010$\u001a\u00020!8\u0007@\u0006¢\u0006\f\n\u0004\b$\u00102\u001a\u0004\b$\u0010#¨\u00066"}, d2 = {"Lokhttp3/Request;", "Lokhttp3/RequestBody;", "-deprecated_body", "()Lokhttp3/RequestBody;", "body", "Lokhttp3/CacheControl;", "-deprecated_cacheControl", "()Lokhttp3/CacheControl;", "cacheControl", "", "name", "header", "(Ljava/lang/String;)Ljava/lang/String;", "Lokhttp3/Headers;", "-deprecated_headers", "()Lokhttp3/Headers;", "headers", "", "(Ljava/lang/String;)Ljava/util/List;", "-deprecated_method", "()Ljava/lang/String;", FirebaseAnalytics.Param.METHOD, "Lokhttp3/Request$Builder;", "newBuilder", "()Lokhttp3/Request$Builder;", "", "tag", "()Ljava/lang/Object;", "T", "Ljava/lang/Class;", "type", "(Ljava/lang/Class;)Ljava/lang/Object;", "toString", "Lokhttp3/HttpUrl;", "-deprecated_url", "()Lokhttp3/HttpUrl;", "url", "Lokhttp3/RequestBody;", "Lokhttp3/Headers;", "", "isHttps", "()Z", "lazyCacheControl", "Lokhttp3/CacheControl;", "Ljava/lang/String;", "", "tags", "Ljava/util/Map;", "getTags$okhttp", "()Ljava/util/Map;", "Lokhttp3/HttpUrl;", "<init>", "(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Ljava/util/Map;)V", "Builder", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Request.class */
public final class Request {
    @Nullable
    private final RequestBody body;
    @NotNull
    private final Headers headers;
    private CacheControl lazyCacheControl;
    @NotNull
    private final String method;
    @NotNull
    private final Map<Class<?>, Object> tags;
    @NotNull
    private final HttpUrl url;

    @Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u0010\b\u0016\u0018��B\t\b\u0016¢\u0006\u0004\bF\u0010GB\u0011\b\u0010\u0012\u0006\u0010H\u001a\u00020\u0006¢\u0006\u0004\bF\u0010IJ\u001f\u0010\u0004\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020��2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000e\u001a\u00020��2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020��H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020��H\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u001f\u0010\u0013\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u0017\u0010\u0015\u001a\u00020��2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020��2\u0006\u0010\u0017\u001a\u00020\u00012\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020��2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0019\u0010\u000fJ\u0017\u0010\u001a\u001a\u00020��2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001a\u0010\u000fJ\u0017\u0010\u001b\u001a\u00020��2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001b\u0010\u000fJ\u0017\u0010\u001c\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010!\u001a\u00020��\"\u0004\b��\u0010\u001e2\u000e\u0010 \u001a\n\u0012\u0006\b��\u0012\u00028��0\u001f2\b\u0010!\u001a\u0004\u0018\u00018��H\u0016¢\u0006\u0004\b!\u0010\"J\u0019\u0010!\u001a\u00020��2\b\u0010!\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b!\u0010$J\u0017\u0010&\u001a\u00020��2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010&\u001a\u00020��2\u0006\u0010&\u001a\u00020\u0001H\u0016¢\u0006\u0004\b&\u0010\u001dJ\u0017\u0010&\u001a\u00020��2\u0006\u0010&\u001a\u00020(H\u0016¢\u0006\u0004\b&\u0010)R$\u0010\r\u001a\u0004\u0018\u00010\f8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\r\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010\u0015\u001a\u00020/8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0015\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010\u0017\u001a\u00020\u00018��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R2\u0010;\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001f\u0012\u0004\u0012\u00020#0:8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R$\u0010&\u001a\u0004\u0018\u00010(8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b&\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010E¨\u0006J"}, d2 = {"Lokhttp3/Request$Builder;", "", "name", FirebaseAnalytics.Param.VALUE, "addHeader", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;", "Lokhttp3/Request;", "build", "()Lokhttp3/Request;", "Lokhttp3/CacheControl;", "cacheControl", "(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;", "Lokhttp3/RequestBody;", "body", "delete", "(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;", "get", "()Lokhttp3/Request$Builder;", "head", "header", "Lokhttp3/Headers;", "headers", "(Lokhttp3/Headers;)Lokhttp3/Request$Builder;", FirebaseAnalytics.Param.METHOD, "(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;", "patch", "post", "put", "removeHeader", "(Ljava/lang/String;)Lokhttp3/Request$Builder;", "T", "Ljava/lang/Class;", "type", "tag", "(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;", "", "(Ljava/lang/Object;)Lokhttp3/Request$Builder;", "Ljava/net/URL;", "url", "(Ljava/net/URL;)Lokhttp3/Request$Builder;", "Lokhttp3/HttpUrl;", "(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;", "Lokhttp3/RequestBody;", "getBody$okhttp", "()Lokhttp3/RequestBody;", "setBody$okhttp", "(Lokhttp3/RequestBody;)V", "Lokhttp3/Headers$Builder;", "Lokhttp3/Headers$Builder;", "getHeaders$okhttp", "()Lokhttp3/Headers$Builder;", "setHeaders$okhttp", "(Lokhttp3/Headers$Builder;)V", "Ljava/lang/String;", "getMethod$okhttp", "()Ljava/lang/String;", "setMethod$okhttp", "(Ljava/lang/String;)V", "", "tags", "Ljava/util/Map;", "getTags$okhttp", "()Ljava/util/Map;", "setTags$okhttp", "(Ljava/util/Map;)V", "Lokhttp3/HttpUrl;", "getUrl$okhttp", "()Lokhttp3/HttpUrl;", "setUrl$okhttp", "(Lokhttp3/HttpUrl;)V", "<init>", "()V", "request", "(Lokhttp3/Request;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Request$Builder.class */
    public static class Builder {
        @Nullable
        private RequestBody body;
        @NotNull
        private Headers.Builder headers;
        @NotNull
        private String method;
        @NotNull
        private Map<Class<?>, Object> tags;
        @Nullable
        private HttpUrl url;

        public Builder() {
            this.tags = new LinkedHashMap();
            this.method = "GET";
            this.headers = new Headers.Builder();
        }

        public Builder(@NotNull Request request) {
            Intrinsics.m1830e(request, "request");
            this.tags = new LinkedHashMap();
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            this.tags = request.getTags$okhttp().isEmpty() ? new LinkedHashMap<>() : MapsKt__MapsKt.m2075p(request.getTags$okhttp());
            this.headers = request.headers().newBuilder();
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    requestBody = Util.EMPTY_REQUEST;
                }
                return builder.delete(requestBody);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }

        @NotNull
        public Builder addHeader(@NotNull String name, @NotNull String value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            this.headers.add(name, value);
            return this;
        }

        @NotNull
        public Request build() {
            HttpUrl httpUrl = this.url;
            if (httpUrl != null) {
                return new Request(httpUrl, this.method, this.headers.build(), this.body, Util.toImmutableMap(this.tags));
            }
            throw new IllegalStateException("url == null".toString());
        }

        @NotNull
        public Builder cacheControl(@NotNull CacheControl cacheControl) {
            Intrinsics.m1830e(cacheControl, "cacheControl");
            String cacheControl2 = cacheControl.toString();
            return cacheControl2.length() == 0 ? removeHeader("Cache-Control") : header("Cache-Control", cacheControl2);
        }

        @JvmOverloads
        @NotNull
        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        @JvmOverloads
        @NotNull
        public Builder delete(@Nullable RequestBody requestBody) {
            return method("DELETE", requestBody);
        }

        @NotNull
        public Builder get() {
            return method("GET", null);
        }

        @Nullable
        public final RequestBody getBody$okhttp() {
            return this.body;
        }

        @NotNull
        public final Headers.Builder getHeaders$okhttp() {
            return this.headers;
        }

        @NotNull
        public final String getMethod$okhttp() {
            return this.method;
        }

        @NotNull
        public final Map<Class<?>, Object> getTags$okhttp() {
            return this.tags;
        }

        @Nullable
        public final HttpUrl getUrl$okhttp() {
            return this.url;
        }

        @NotNull
        public Builder head() {
            return method("HEAD", null);
        }

        @NotNull
        public Builder header(@NotNull String name, @NotNull String value) {
            Intrinsics.m1830e(name, "name");
            Intrinsics.m1830e(value, "value");
            this.headers.set(name, value);
            return this;
        }

        @NotNull
        public Builder headers(@NotNull Headers headers) {
            Intrinsics.m1830e(headers, "headers");
            this.headers = headers.newBuilder();
            return this;
        }

        @NotNull
        public Builder method(@NotNull String method, @Nullable RequestBody requestBody) {
            Intrinsics.m1830e(method, "method");
            if (method.length() > 0) {
                if (requestBody == null) {
                    if (!(true ^ HttpMethod.requiresRequestBody(method))) {
                        throw new IllegalArgumentException(("method " + method + " must have a request body.").toString());
                    }
                } else if (!HttpMethod.permitsRequestBody(method)) {
                    throw new IllegalArgumentException(("method " + method + " must not have a request body.").toString());
                }
                this.method = method;
                this.body = requestBody;
                return this;
            }
            throw new IllegalArgumentException("method.isEmpty() == true".toString());
        }

        @NotNull
        public Builder patch(@NotNull RequestBody body) {
            Intrinsics.m1830e(body, "body");
            return method("PATCH", body);
        }

        @NotNull
        public Builder post(@NotNull RequestBody body) {
            Intrinsics.m1830e(body, "body");
            return method("POST", body);
        }

        @NotNull
        public Builder put(@NotNull RequestBody body) {
            Intrinsics.m1830e(body, "body");
            return method("PUT", body);
        }

        @NotNull
        public Builder removeHeader(@NotNull String name) {
            Intrinsics.m1830e(name, "name");
            this.headers.removeAll(name);
            return this;
        }

        public final void setBody$okhttp(@Nullable RequestBody requestBody) {
            this.body = requestBody;
        }

        public final void setHeaders$okhttp(@NotNull Headers.Builder builder) {
            Intrinsics.m1830e(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMethod$okhttp(@NotNull String str) {
            Intrinsics.m1830e(str, "<set-?>");
            this.method = str;
        }

        public final void setTags$okhttp(@NotNull Map<Class<?>, Object> map) {
            Intrinsics.m1830e(map, "<set-?>");
            this.tags = map;
        }

        public final void setUrl$okhttp(@Nullable HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        @NotNull
        public <T> Builder tag(@NotNull Class<? super T> type, @Nullable T t) {
            Intrinsics.m1830e(type, "type");
            if (t == null) {
                this.tags.remove(type);
            } else {
                if (this.tags.isEmpty()) {
                    this.tags = new LinkedHashMap();
                }
                Map<Class<?>, Object> map = this.tags;
                Object cast = type.cast(t);
                Intrinsics.m1832c(cast);
                map.put(type, cast);
            }
            return this;
        }

        @NotNull
        public Builder tag(@Nullable Object obj) {
            return tag(Object.class, obj);
        }

        @NotNull
        public Builder url(@NotNull String url) {
            boolean A;
            String str;
            boolean A2;
            Intrinsics.m1830e(url, "url");
            A = StringsKt__StringsJVMKt.m1493A(url, "ws:", true);
            if (A) {
                StringBuilder sb = new StringBuilder();
                sb.append("http:");
                String substring = url.substring(3);
                Intrinsics.m1831d(substring, "(this as java.lang.String).substring(startIndex)");
                sb.append(substring);
                str = sb.toString();
            } else {
                str = url;
                A2 = StringsKt__StringsJVMKt.m1493A(url, "wss:", true);
                if (A2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("https:");
                    String substring2 = url.substring(4);
                    Intrinsics.m1831d(substring2, "(this as java.lang.String).substring(startIndex)");
                    sb2.append(substring2);
                    str = sb2.toString();
                }
            }
            return url(HttpUrl.Companion.get(str));
        }

        @NotNull
        public Builder url(@NotNull URL url) {
            Intrinsics.m1830e(url, "url");
            HttpUrl.Companion companion = HttpUrl.Companion;
            String url2 = url.toString();
            Intrinsics.m1831d(url2, "url.toString()");
            return url(companion.get(url2));
        }

        @NotNull
        public Builder url(@NotNull HttpUrl url) {
            Intrinsics.m1830e(url, "url");
            this.url = url;
            return this;
        }
    }

    public Request(@NotNull HttpUrl url, @NotNull String method, @NotNull Headers headers, @Nullable RequestBody requestBody, @NotNull Map<Class<?>, ? extends Object> tags) {
        Intrinsics.m1830e(url, "url");
        Intrinsics.m1830e(method, "method");
        Intrinsics.m1830e(headers, "headers");
        Intrinsics.m1830e(tags, "tags");
        this.url = url;
        this.method = method;
        this.headers = headers;
        this.body = requestBody;
        this.tags = tags;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_body  reason: not valid java name */
    public final RequestBody m24720deprecated_body() {
        return this.body;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_cacheControl  reason: not valid java name */
    public final CacheControl m24721deprecated_cacheControl() {
        return cacheControl();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_headers  reason: not valid java name */
    public final Headers m24722deprecated_headers() {
        return this.headers;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_method  reason: not valid java name */
    public final String m24723deprecated_method() {
        return this.method;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_url  reason: not valid java name */
    public final HttpUrl m24724deprecated_url() {
        return this.url;
    }

    @JvmName
    @Nullable
    public final RequestBody body() {
        return this.body;
    }

    @JvmName
    @NotNull
    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        CacheControl cacheControl2 = cacheControl;
        if (cacheControl == null) {
            cacheControl2 = CacheControl.Companion.parse(this.headers);
            this.lazyCacheControl = cacheControl2;
        }
        return cacheControl2;
    }

    @NotNull
    public final Map<Class<?>, Object> getTags$okhttp() {
        return this.tags;
    }

    @Nullable
    public final String header(@NotNull String name) {
        Intrinsics.m1830e(name, "name");
        return this.headers.get(name);
    }

    @NotNull
    public final List<String> headers(@NotNull String name) {
        Intrinsics.m1830e(name, "name");
        return this.headers.values(name);
    }

    @JvmName
    @NotNull
    public final Headers headers() {
        return this.headers;
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    @JvmName
    @NotNull
    public final String method() {
        return this.method;
    }

    @NotNull
    public final Builder newBuilder() {
        return new Builder(this);
    }

    @Nullable
    public final Object tag() {
        return tag(Object.class);
    }

    @Nullable
    public final <T> T tag(@NotNull Class<? extends T> type) {
        Intrinsics.m1830e(type, "type");
        return (T) type.cast(this.tags.get(type));
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.method);
        sb.append(", url=");
        sb.append(this.url);
        if (this.headers.size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (Pair<? extends String, ? extends String> pair : this.headers) {
                if (i >= 0) {
                    Pair<? extends String, ? extends String> pair2 = pair;
                    String str = (String) pair2.m2486a();
                    String str2 = (String) pair2.m2485b();
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(str);
                    sb.append(':');
                    sb.append(str2);
                    i++;
                } else {
                    CollectionsKt.m2188o();
                    throw null;
                }
            }
            sb.append(']');
        }
        if (!this.tags.isEmpty()) {
            sb.append(", tags=");
            sb.append(this.tags);
        }
        sb.append('}');
        String sb2 = sb.toString();
        Intrinsics.m1831d(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @JvmName
    @NotNull
    public final HttpUrl url() {
        return this.url;
    }
}
