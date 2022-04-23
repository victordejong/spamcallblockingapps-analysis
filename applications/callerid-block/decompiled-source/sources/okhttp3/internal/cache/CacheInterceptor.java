package okhttp3.internal.cache;

import com.lidroid.xutils.http.client.multipart.MIME;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
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
        if (!(cacheRequest == null || (body = cacheRequest.body()) == null)) {
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

    /* JADX WARN: Type inference failed for: r0v3, types: [okhttp3.internal.cache.CacheStrategy$Factory] */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        InternalCache internalCache = this.cache;
        final Response response = internalCache != null ? internalCache.get(chain.request()) : null;
        final long currentTimeMillis = System.currentTimeMillis();
        final Request request = chain.request();
        CacheStrategy cacheStrategy = new Object(currentTimeMillis, request, response) { // from class: okhttp3.internal.cache.CacheStrategy$Factory
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

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r12v0 */
            /* JADX WARN: Type inference failed for: r12v1, types: [long] */
            /* JADX WARN: Type inference failed for: r12v3 */
            /* JADX WARN: Type inference failed for: r9v0 */
            /* JADX WARN: Type inference failed for: r9v1, types: [long] */
            /* JADX WARN: Type inference failed for: r9v4 */
            /* JADX WARN: Unknown variable types count: 2 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private long cacheResponseAge() {
                /*
                    r7 = this;
                    r0 = r7
                    java.util.Date r0 = r0.servedDate
                    r8 = r0
                    r0 = 0
                    r9 = r0
                    r0 = r8
                    if (r0 == 0) goto L_0x0019
                    r0 = 0
                    r1 = r7
                    long r1 = r1.receivedResponseMillis
                    r2 = r8
                    long r2 = r2.getTime()
                    long r1 = r1 - r2
                    long r0 = java.lang.Math.max(r0, r1)
                    r9 = r0
                L_0x0019:
                    r0 = r7
                    int r0 = r0.ageSeconds
                    r11 = r0
                    r0 = r9
                    r12 = r0
                    r0 = r11
                    r1 = -1
                    if (r0 == r1) goto L_0x0037
                    r0 = r9
                    java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
                    r2 = r11
                    long r2 = (long) r2
                    long r1 = r1.toMillis(r2)
                    long r0 = java.lang.Math.max(r0, r1)
                    r12 = r0
                L_0x0037:
                    r0 = r7
                    long r0 = r0.receivedResponseMillis
                    r9 = r0
                    r0 = r12
                    r1 = r9
                    r2 = r7
                    long r2 = r2.sentRequestMillis
                    long r1 = r1 - r2
                    long r0 = r0 + r1
                    r1 = r7
                    long r1 = r1.nowMillis
                    r2 = r9
                    long r1 = r1 - r2
                    long r0 = r0 + r1
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy$Factory.cacheResponseAge():long");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v39, types: [long] */
            /* JADX WARN: Type inference failed for: r7v0 */
            /* JADX WARN: Type inference failed for: r7v1, types: [long] */
            /* JADX WARN: Type inference failed for: r7v2 */
            /* JADX WARN: Type inference failed for: r9v0 */
            /* JADX WARN: Type inference failed for: r9v1, types: [long] */
            /* JADX WARN: Type inference failed for: r9v12 */
            /* JADX WARN: Type inference failed for: r9v2 */
            /* JADX WARN: Type inference failed for: r9v4 */
            /* JADX WARN: Unknown variable types count: 3 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private long computeFreshnessLifetime() {
                /*
                    r5 = this;
                    r0 = r5
                    okhttp3.Response r0 = r0.cacheResponse
                    okhttp3.CacheControl r0 = r0.cacheControl()
                    r6 = r0
                    r0 = r6
                    int r0 = r0.maxAgeSeconds()
                    r1 = -1
                    if (r0 == r1) goto L_0x001c
                    java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
                    r1 = r6
                    int r1 = r1.maxAgeSeconds()
                    long r1 = (long) r1
                    long r0 = r0.toMillis(r1)
                    return r0
                L_0x001c:
                    r0 = r5
                    java.util.Date r0 = r0.expires
                    r6 = r0
                    r0 = 0
                    r7 = r0
                    r0 = r6
                    if (r0 == 0) goto L_0x0057
                    r0 = r5
                    java.util.Date r0 = r0.servedDate
                    r6 = r0
                    r0 = r6
                    if (r0 == 0) goto L_0x0039
                    r0 = r6
                    long r0 = r0.getTime()
                    r9 = r0
                    goto L_0x003f
                L_0x0039:
                    r0 = r5
                    long r0 = r0.receivedResponseMillis
                    r9 = r0
                L_0x003f:
                    r0 = r5
                    java.util.Date r0 = r0.expires
                    long r0 = r0.getTime()
                    r1 = r9
                    long r0 = r0 - r1
                    r9 = r0
                    r0 = r9
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 <= 0) goto L_0x0055
                    r0 = r9
                    r7 = r0
                L_0x0055:
                    r0 = r7
                    return r0
                L_0x0057:
                    r0 = r7
                    r9 = r0
                    r0 = r5
                    java.util.Date r0 = r0.lastModified
                    if (r0 == 0) goto L_0x00aa
                    r0 = r7
                    r9 = r0
                    r0 = r5
                    okhttp3.Response r0 = r0.cacheResponse
                    okhttp3.Request r0 = r0.request()
                    okhttp3.HttpUrl r0 = r0.url()
                    java.lang.String r0 = r0.query()
                    if (r0 != 0) goto L_0x00aa
                    r0 = r5
                    java.util.Date r0 = r0.servedDate
                    r6 = r0
                    r0 = r6
                    if (r0 == 0) goto L_0x0086
                    r0 = r6
                    long r0 = r0.getTime()
                    r9 = r0
                    goto L_0x008c
                L_0x0086:
                    r0 = r5
                    long r0 = r0.sentRequestMillis
                    r9 = r0
                L_0x008c:
                    r0 = r9
                    r1 = r5
                    java.util.Date r1 = r1.lastModified
                    long r1 = r1.getTime()
                    long r0 = r0 - r1
                    r11 = r0
                    r0 = r7
                    r9 = r0
                    r0 = r11
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 <= 0) goto L_0x00aa
                    r0 = r11
                    r1 = 10
                    long r0 = r0 / r1
                    r9 = r0
                L_0x00aa:
                    r0 = r9
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy$Factory.computeFreshnessLifetime():long");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v23, types: [long] */
            /* JADX WARN: Type inference failed for: r12v1 */
            /* JADX WARN: Type inference failed for: r12v2, types: [long] */
            /* JADX WARN: Type inference failed for: r12v3 */
            /* JADX WARN: Type inference failed for: r12v5 */
            /* JADX WARN: Type inference failed for: r14v0 */
            /* JADX WARN: Type inference failed for: r14v1, types: [long] */
            /* JADX WARN: Type inference failed for: r14v3 */
            /* JADX WARN: Unknown variable types count: 3 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private okhttp3.internal.cache.CacheStrategy getCandidate() {
                /*
                    Method dump skipped, instructions count: 436
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy$Factory.getCandidate():okhttp3.internal.cache.CacheStrategy");
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
        Request request2 = cacheStrategy.networkRequest;
        Response response2 = cacheStrategy.cacheResponse;
        InternalCache internalCache2 = this.cache;
        if (internalCache2 != null) {
            internalCache2.trackResponse(cacheStrategy);
        }
        if (response != null && response2 == null) {
            Util.closeQuietly(response.body());
        }
        if (request2 == null && response2 == null) {
            return new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1L).receivedResponseAtMillis(System.currentTimeMillis()).build();
        }
        if (request2 == null) {
            return response2.newBuilder().cacheResponse(stripBody(response2)).build();
        }
        try {
            Response proceed = chain.proceed(request2);
            if (proceed == null && response != null) {
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
                if (HttpHeaders.hasBody(build2) && CacheStrategy.isCacheable(build2, request2)) {
                    return cacheWritingResponse(this.cache.put(build2), build2);
                }
                if (HttpMethod.invalidatesCache(request2.method())) {
                    try {
                        this.cache.remove(request2);
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
