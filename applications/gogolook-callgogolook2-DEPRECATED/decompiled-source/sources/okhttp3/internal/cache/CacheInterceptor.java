package okhttp3.internal.cache;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;
import p645m.AbstractC15173d;
import p645m.AbstractC15174e;
import p645m.AbstractC15192r;
import p645m.AbstractC15193s;
import p645m.C15170c;
import p645m.C15181l;
import p645m.C15194t;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/cache/CacheInterceptor.class */
public final class CacheInterceptor implements Interceptor {
    public final InternalCache cache;

    public CacheInterceptor(InternalCache internalCache) {
        this.cache = internalCache;
    }

    public static Headers combine(Headers headers, Headers headers2) {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            if ((!"Warning".equalsIgnoreCase(name) || !value.startsWith("1")) && (isContentSpecificHeader(name) || !isEndToEnd(name) || headers2.get(name) == null)) {
                Internal.instance.addLenient(builder, name, value);
            }
        }
        int size2 = headers2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            String name2 = headers2.name(i2);
            if (!isContentSpecificHeader(name2) && isEndToEnd(name2)) {
                Internal.instance.addLenient(builder, name2, headers2.value(i2));
            }
        }
        return builder.build();
    }

    public static boolean isContentSpecificHeader(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    public static boolean isEndToEnd(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    public static Response stripBody(Response response) {
        Response response2 = response;
        if (response != null) {
            response2 = response;
            if (response.body() != null) {
                Response.Builder newBuilder = response.newBuilder();
                newBuilder.body(null);
                response2 = newBuilder.build();
            }
        }
        return response2;
    }

    public final Response cacheWritingResponse(final CacheRequest cacheRequest, Response response) throws IOException {
        AbstractC15192r body;
        if (!(cacheRequest == null || (body = cacheRequest.body()) == null)) {
            final AbstractC15174e source = response.body().source();
            final AbstractC15173d a = C15181l.m319a(body);
            AbstractC15193s sVar = new AbstractC15193s(this) { // from class: okhttp3.internal.cache.CacheInterceptor.1
                public boolean cacheRequestClosed;

                @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                        this.cacheRequestClosed = true;
                        cacheRequest.abort();
                    }
                    source.close();
                }

                @Override // p645m.AbstractC15193s
                public long read(C15170c cVar, long j) throws IOException {
                    try {
                        long read = source.read(cVar, j);
                        if (read != -1) {
                            cVar.m359a(a.mo296q(), cVar.m348i() - read, read);
                            a.mo308r();
                            return read;
                        } else if (this.cacheRequestClosed) {
                            return -1L;
                        } else {
                            this.cacheRequestClosed = true;
                            a.close();
                            return -1L;
                        }
                    } catch (IOException e) {
                        if (!this.cacheRequestClosed) {
                            this.cacheRequestClosed = true;
                            cacheRequest.abort();
                        }
                        throw e;
                    }
                }

                @Override // p645m.AbstractC15193s
                public C15194t timeout() {
                    return source.timeout();
                }
            };
            String header = response.header("Content-Type");
            long contentLength = response.body().contentLength();
            Response.Builder newBuilder = response.newBuilder();
            newBuilder.body(new RealResponseBody(header, contentLength, C15181l.m318a(sVar)));
            return newBuilder.build();
        }
        return response;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        InternalCache internalCache = this.cache;
        Response response = internalCache != null ? internalCache.get(chain.request()) : null;
        CacheStrategy cacheStrategy = new CacheStrategy.Factory(System.currentTimeMillis(), chain.request(), response).get();
        Request request = cacheStrategy.networkRequest;
        Response response2 = cacheStrategy.cacheResponse;
        InternalCache internalCache2 = this.cache;
        if (internalCache2 != null) {
            internalCache2.trackResponse(cacheStrategy);
        }
        if (response != null && response2 == null) {
            Util.closeQuietly(response.body());
        }
        if (request == null && response2 == null) {
            Response.Builder builder = new Response.Builder();
            builder.request(chain.request());
            builder.protocol(Protocol.HTTP_1_1);
            builder.code(504);
            builder.message("Unsatisfiable Request (only-if-cached)");
            builder.body(Util.EMPTY_RESPONSE);
            builder.sentRequestAtMillis(-1L);
            builder.receivedResponseAtMillis(System.currentTimeMillis());
            return builder.build();
        } else if (request == null) {
            Response.Builder newBuilder = response2.newBuilder();
            newBuilder.cacheResponse(stripBody(response2));
            return newBuilder.build();
        } else {
            try {
                Response proceed = chain.proceed(request);
                if (proceed == null && response != null) {
                }
                if (response2 != null) {
                    if (proceed.code() == 304) {
                        Response.Builder newBuilder2 = response2.newBuilder();
                        newBuilder2.headers(combine(response2.headers(), proceed.headers()));
                        newBuilder2.sentRequestAtMillis(proceed.sentRequestAtMillis());
                        newBuilder2.receivedResponseAtMillis(proceed.receivedResponseAtMillis());
                        newBuilder2.cacheResponse(stripBody(response2));
                        newBuilder2.networkResponse(stripBody(proceed));
                        Response build = newBuilder2.build();
                        proceed.body().close();
                        this.cache.trackConditionalCacheHit();
                        this.cache.update(response2, build);
                        return build;
                    }
                    Util.closeQuietly(response2.body());
                }
                Response.Builder newBuilder3 = proceed.newBuilder();
                newBuilder3.cacheResponse(stripBody(response2));
                newBuilder3.networkResponse(stripBody(proceed));
                Response build2 = newBuilder3.build();
                if (this.cache != null) {
                    if (HttpHeaders.hasBody(build2) && CacheStrategy.isCacheable(build2, request)) {
                        return cacheWritingResponse(this.cache.put(build2), build2);
                    }
                    if (HttpMethod.invalidatesCache(request.method())) {
                        try {
                            this.cache.remove(request);
                        } catch (IOException e) {
                        }
                    }
                }
                return build2;
            } finally {
                if (response != null) {
                    Util.closeQuietly(response.body());
                }
            }
        }
    }
}
