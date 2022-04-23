package okhttp3.internal.cache;

import c.ab;
import c.ad;
import c.ae;
import c.f;
import c.g;
import c.h;
import c.r;
import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.h.p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http.RealResponseBody;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor;", "Lokhttp3/Interceptor;", "cache", "Lokhttp3/Cache;", "(Lokhttp3/Cache;)V", "getCache$okhttp", "()Lokhttp3/Cache;", "cacheWritingResponse", "Lokhttp3/Response;", "cacheRequest", "Lokhttp3/internal/cache/CacheRequest;", Payload.RESPONSE, "intercept", "chain", "Lokhttp3/Interceptor$Chain;", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/CacheInterceptor.class */
public final class CacheInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    private final Cache cache;

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0014\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor$Companion;", "", "()V", "combine", "Lokhttp3/Headers;", "cachedHeaders", "networkHeaders", "isContentSpecificHeader", "", "fieldName", "", "isEndToEnd", "stripBody", "Lokhttp3/Response;", Payload.RESPONSE, "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/CacheInterceptor$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Headers combine(Headers headers, Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                String value = headers.value(i);
                if (!p.a("Warning", name) || !p.a(value, "1", false)) {
                    Companion companion = this;
                    if (companion.isContentSpecificHeader(name) || !companion.isEndToEnd(name) || headers2.get(name) == null) {
                        builder.addLenient$okhttp(name, value);
                    }
                }
            }
            int size2 = headers2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String name2 = headers2.name(i2);
                Companion companion2 = this;
                if (!companion2.isContentSpecificHeader(name2) && companion2.isEndToEnd(name2)) {
                    builder.addLenient$okhttp(name2, headers2.value(i2));
                }
            }
            return builder.build();
        }

        private final boolean isContentSpecificHeader(String str) {
            return p.a("Content-Length", str) || p.a("Content-Encoding", str) || p.a("Content-Type", str);
        }

        private final boolean isEndToEnd(String str) {
            return !p.a("Connection", str) && !p.a("Keep-Alive", str) && !p.a("Proxy-Authenticate", str) && !p.a("Proxy-Authorization", str) && !p.a("TE", str) && !p.a("Trailers", str) && !p.a("Transfer-Encoding", str) && !p.a("Upgrade", str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Response stripBody(Response response) {
            Response response2 = response;
            if ((response != null ? response.body() : null) != null) {
                response2 = response.newBuilder().body(null).build();
            }
            return response2;
        }
    }

    public CacheInterceptor(Cache cache) {
        this.cache = cache;
    }

    private final Response cacheWritingResponse(final CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        ab body = cacheRequest.body();
        ResponseBody body2 = response.body();
        kotlin.jvm.internal.p.a(body2);
        final h source = body2.source();
        final g a2 = r.a(body);
        ad cacheInterceptor$cacheWritingResponse$cacheWritingSource$1 = new ad() { // from class: okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1
            private boolean cacheRequestClosed;

            @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    this.cacheRequestClosed = true;
                    cacheRequest.abort();
                }
                h.this.close();
            }

            @Override // c.ad
            public final long read(f sink, long j) throws IOException {
                kotlin.jvm.internal.p.d(sink, "sink");
                try {
                    long read = h.this.read(sink, j);
                    if (read != -1) {
                        sink.a(a2.b(), sink.f6289b - read, read);
                        a2.c();
                        return read;
                    } else if (this.cacheRequestClosed) {
                        return -1L;
                    } else {
                        this.cacheRequestClosed = true;
                        a2.close();
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

            @Override // c.ad
            public final ae timeout() {
                return h.this.timeout();
            }
        };
        return response.newBuilder().body(new RealResponseBody(Response.header$default(response, "Content-Type", null, 2, null), response.body().contentLength(), r.a(cacheInterceptor$cacheWritingResponse$cacheWritingSource$1))).build();
    }

    public final Cache getCache$okhttp() {
        return this.cache;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0085, code lost:
        if (r0 == null) goto L_0x0088;
     */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response intercept(okhttp3.Interceptor.Chain r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
