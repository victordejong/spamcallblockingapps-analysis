package okhttp3.internal.cache;

import com.lidroid.xutils.http.client.multipart.MIME;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Headers$Builder;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpDate;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheInterceptor.class */
public final class CacheInterceptor implements Interceptor {
    final InternalCache cache;

    public CacheInterceptor(InternalCache internalCache) {
        this.cache = internalCache;
    }

    private Response cacheWritingResponse(final CacheRequest cacheRequest, Response response) {
        Sink body;
        if (cacheRequest != null && (body = cacheRequest.body()) != null) {
            final BufferedSource source = response.body().source();
            final BufferedSink buffer = Okio.buffer(body);
            return response.newBuilder().body(new RealResponseBody(response.header(MIME.CONTENT_TYPE), response.body().contentLength(), Okio.buffer(new Source() { // from class: okhttp3.internal.cache.CacheInterceptor.1
                boolean cacheRequestClosed;

                public void close() {
                    if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                        this.cacheRequestClosed = true;
                        cacheRequest.abort();
                    }
                    source.close();
                }

                public long read(Buffer buffer2, long j) {
                    try {
                        long read = source.read(buffer2, j);
                        if (read != -1) {
                            buffer2.copyTo(buffer.buffer(), buffer2.size() - read, read);
                            buffer.emitCompleteSegments();
                            return read;
                        } else if (this.cacheRequestClosed) {
                            return -1L;
                        } else {
                            this.cacheRequestClosed = true;
                            buffer.close();
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

                public Timeout timeout() {
                    return source.timeout();
                }
            }))).build();
        }
        return response;
    }

    private static Headers combine(Headers headers, Headers headers2) {
        Headers$Builder headers$Builder = new Headers$Builder();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            if ((!"Warning".equalsIgnoreCase(name) || !value.startsWith("1")) && (isContentSpecificHeader(name) || !isEndToEnd(name) || headers2.get(name) == null)) {
                Internal.instance.addLenient(headers$Builder, name, value);
            }
        }
        int size2 = headers2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            String name2 = headers2.name(i2);
            if (!isContentSpecificHeader(name2) && isEndToEnd(name2)) {
                Internal.instance.addLenient(headers$Builder, name2, headers2.value(i2));
            }
        }
        return headers$Builder.build();
    }

    static boolean isContentSpecificHeader(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || MIME.CONTENT_TYPE.equalsIgnoreCase(str);
    }

    static boolean isEndToEnd(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    private static Response stripBody(Response response) {
        Response response2 = response;
        if (response != null) {
            response2 = response;
            if (response.body() != null) {
                response2 = response.newBuilder().body((ResponseBody) null).build();
            }
        }
        return response2;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [okhttp3.internal.cache.CacheStrategy$Factory] */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        InternalCache internalCache = this.cache;
        Response response = internalCache != null ? internalCache.get(chain.request()) : null;
        CacheStrategy cacheStrategy = new Object(System.currentTimeMillis(), chain.request(), response) { // from class: okhttp3.internal.cache.CacheStrategy$Factory
            private int ageSeconds;
            final Response cacheResponse;
            private String etag;
            private Date expires;
            private Date lastModified;
            private String lastModifiedString;
            final long nowMillis;
            private long receivedResponseMillis;
            final Request request;
            private long sentRequestMillis;
            private Date servedDate;
            private String servedDateString;

            {
                this.ageSeconds = -1;
                this.nowMillis = currentTimeMillis;
                this.request = request;
                this.cacheResponse = response;
                if (response != null) {
                    this.sentRequestMillis = response.sentRequestAtMillis();
                    this.receivedResponseMillis = response.receivedResponseAtMillis();
                    Headers headers = response.headers();
                    int size = headers.size();
                    for (int i = 0; i < size; i++) {
                        String name = headers.name(i);
                        String value = headers.value(i);
                        if ("Date".equalsIgnoreCase(name)) {
                            this.servedDate = HttpDate.parse(value);
                            this.servedDateString = value;
                        } else if ("Expires".equalsIgnoreCase(name)) {
                            this.expires = HttpDate.parse(value);
                        } else if ("Last-Modified".equalsIgnoreCase(name)) {
                            this.lastModified = HttpDate.parse(value);
                            this.lastModifiedString = value;
                        } else if ("ETag".equalsIgnoreCase(name)) {
                            this.etag = value;
                        } else if ("Age".equalsIgnoreCase(name)) {
                            this.ageSeconds = HttpHeaders.parseSeconds(value, -1);
                        }
                    }
                }
            }

            /* JADX WARN: Type inference failed for: r0v14, types: [long] */
            /* JADX WARN: Type inference failed for: r0v16, types: [long] */
            private long cacheResponseAge() {
                Date date = this.servedDate;
                char c = 0;
                if (date != null) {
                    c = Math.max(0L, this.receivedResponseMillis - date.getTime());
                }
                int i = this.ageSeconds;
                char c2 = c;
                if (i != -1) {
                    c2 = Math.max((long) c, TimeUnit.SECONDS.toMillis(i));
                }
                long j = this.receivedResponseMillis;
                return c2 + (j - this.sentRequestMillis) + (this.nowMillis - j);
            }

            /* JADX WARN: Type inference failed for: r0v28, types: [long] */
            /* JADX WARN: Type inference failed for: r0v30, types: [long] */
            /* JADX WARN: Type inference failed for: r0v32, types: [long] */
            /* JADX WARN: Type inference failed for: r0v39, types: [long] */
            /* JADX WARN: Type inference failed for: r0v45, types: [long] */
            /* JADX WARN: Type inference failed for: r0v47, types: [long] */
            private long computeFreshnessLifetime() {
                CacheControl cacheControl;
                if (this.cacheResponse.cacheControl().maxAgeSeconds() != -1) {
                    return TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds());
                }
                char c = 0;
                if (this.expires != null) {
                    Date date = this.servedDate;
                    ?? time = this.expires.getTime() - (date != null ? date.getTime() : this.receivedResponseMillis);
                    if (time > 0) {
                        c = time;
                    }
                    return c;
                }
                char c2 = 0;
                if (this.lastModified != null) {
                    c2 = 0;
                    if (this.cacheResponse.request().url().query() == null) {
                        Date date2 = this.servedDate;
                        long time2 = (date2 != null ? date2.getTime() : this.sentRequestMillis) - this.lastModified.getTime();
                        c2 = 0;
                        if (time2 > 0) {
                            c2 = time2 / 10;
                        }
                    }
                }
                return c2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v23, types: [long] */
            /* JADX WARN: Type inference failed for: r0v56 */
            /* JADX WARN: Type inference failed for: r0v78, types: [long] */
            /* JADX WARN: Type inference failed for: r0v81, types: [long] */
            /* JADX WARN: Type inference failed for: r0v83, types: [long] */
            /* JADX WARN: Type inference failed for: r12v1 */
            /* JADX WARN: Type inference failed for: r12v2 */
            /* JADX WARN: Type inference failed for: r12v3 */
            /* JADX WARN: Type inference failed for: r12v4 */
            /* JADX WARN: Type inference failed for: r14v0 */
            /* JADX WARN: Type inference failed for: r14v1 */
            /* JADX WARN: Type inference failed for: r14v2 */
            /* JADX WARN: Type inference failed for: r19v0 */
            /* JADX WARN: Type inference failed for: r19v2 */
            /* JADX WARN: Type inference failed for: r19v3 */
            /* JADX WARN: Type inference failed for: r1v11, types: [long] */
            /* JADX WARN: Type inference failed for: r1v9, types: [long] */
            /* JADX WARN: Type inference failed for: r2v10, types: [long] */
            private CacheStrategy getCandidate() {
                if (this.cacheResponse == null) {
                    return new CacheStrategy(this.request, (Response) null);
                }
                if ((!this.request.isHttps() || this.cacheResponse.handshake() != null) && CacheStrategy.isCacheable(this.cacheResponse, this.request)) {
                    CacheControl cacheControl = this.request.cacheControl();
                    if (cacheControl.noCache() || hasConditions(this.request)) {
                        return new CacheStrategy(this.request, (Response) null);
                    }
                    CacheControl cacheControl2 = this.cacheResponse.cacheControl();
                    long cacheResponseAge = cacheResponseAge();
                    ?? computeFreshnessLifetime = computeFreshnessLifetime();
                    ?? r14 = computeFreshnessLifetime;
                    if (cacheControl.maxAgeSeconds() != -1) {
                        r14 = Math.min((long) computeFreshnessLifetime, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
                    }
                    ?? millis = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : false;
                    ?? r12 = 0;
                    if (!cacheControl2.mustRevalidate()) {
                        r12 = 0;
                        if (cacheControl.maxStaleSeconds() != -1) {
                            r12 = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
                        }
                    }
                    if (!cacheControl2.noCache()) {
                        long j = (millis == true ? 1L : 0L) + cacheResponseAge;
                        if (j < r12 + r14) {
                            Response.Builder newBuilder = this.cacheResponse.newBuilder();
                            if (j >= r14) {
                                newBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                            }
                            if (cacheResponseAge > 86400000 && isFreshnessLifetimeHeuristic()) {
                                newBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                            }
                            return new CacheStrategy((Request) null, newBuilder.build());
                        }
                    }
                    String str = this.etag;
                    String str2 = "If-Modified-Since";
                    if (str != null) {
                        str2 = "If-None-Match";
                    } else if (this.lastModified != null) {
                        str = this.lastModifiedString;
                    } else if (this.servedDate == null) {
                        return new CacheStrategy(this.request, (Response) null);
                    } else {
                        str = this.servedDateString;
                    }
                    Headers$Builder newBuilder2 = this.request.headers().newBuilder();
                    Internal.instance.addLenient(newBuilder2, str2, str);
                    return new CacheStrategy(this.request.newBuilder().headers(newBuilder2.build()).build(), this.cacheResponse);
                }
                return new CacheStrategy(this.request, (Response) null);
            }

            private static boolean hasConditions(Request request2) {
                return (request2.header("If-Modified-Since") == null && request2.header("If-None-Match") == null) ? false : true;
            }

            private boolean isFreshnessLifetimeHeuristic() {
                return this.cacheResponse.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
            }

            public CacheStrategy get() {
                CacheStrategy candidate = getCandidate();
                CacheStrategy cacheStrategy2 = candidate;
                if (candidate.networkRequest != null) {
                    cacheStrategy2 = candidate;
                    if (this.request.cacheControl().onlyIfCached()) {
                        cacheStrategy2 = new CacheStrategy((Request) null, (Response) null);
                    }
                }
                return cacheStrategy2;
            }
        }.get();
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
            return new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1L).receivedResponseAtMillis(System.currentTimeMillis()).build();
        }
        if (request == null) {
            return response2.newBuilder().cacheResponse(stripBody(response2)).build();
        }
        try {
            Response proceed = chain.proceed(request);
            if (proceed == null && response != null) {
                Util.closeQuietly(response.body());
            }
            if (response2 != null) {
                if (proceed.code() == 304) {
                    Response build = response2.newBuilder().headers(combine(response2.headers(), proceed.headers())).sentRequestAtMillis(proceed.sentRequestAtMillis()).receivedResponseAtMillis(proceed.receivedResponseAtMillis()).cacheResponse(stripBody(response2)).networkResponse(stripBody(proceed)).build();
                    proceed.body().close();
                    this.cache.trackConditionalCacheHit();
                    this.cache.update(response2, build);
                    return build;
                }
                Util.closeQuietly(response2.body());
            }
            Response build2 = proceed.newBuilder().cacheResponse(stripBody(response2)).networkResponse(stripBody(proceed)).build();
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
        } catch (Throwable th) {
            if (response != null) {
                Util.closeQuietly(response.body());
            }
            throw th;
        }
    }
}
