package okhttp3.internal.cache;

import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http.RealResponseBody;
import p092c.AbstractC3188ab;
import p092c.AbstractC3190ad;
import p092c.AbstractC3206g;
import p092c.AbstractC3207h;
import p092c.C3191ae;
import p092c.C3202f;
import p092c.C3218r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, m4298d2 = {"Lokhttp3/internal/cache/CacheInterceptor;", "Lokhttp3/Interceptor;", "cache", "Lokhttp3/Cache;", "(Lokhttp3/Cache;)V", "getCache$okhttp", "()Lokhttp3/Cache;", "cacheWritingResponse", "Lokhttp3/Response;", "cacheRequest", "Lokhttp3/internal/cache/CacheRequest;", Payload.RESPONSE, "intercept", "chain", "Lokhttp3/Interceptor$Chain;", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/CacheInterceptor.class */
public final class CacheInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    private final Cache cache;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0014\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¨\u0006\u000f"}, m4298d2 = {"Lokhttp3/internal/cache/CacheInterceptor$Companion;", "", "()V", "combine", "Lokhttp3/Headers;", "cachedHeaders", "networkHeaders", "isContentSpecificHeader", "", "fieldName", "", "isEndToEnd", "stripBody", "Lokhttp3/Response;", Payload.RESPONSE, "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/CacheInterceptor$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Headers combine(Headers headers, Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                String value = headers.value(i);
                if (!C18425p.m3961a("Warning", name) || !C18425p.m3957a(value, "1", false)) {
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
            return C18425p.m3961a("Content-Length", str) || C18425p.m3961a("Content-Encoding", str) || C18425p.m3961a("Content-Type", str);
        }

        private final boolean isEndToEnd(String str) {
            return !C18425p.m3961a("Connection", str) && !C18425p.m3961a("Keep-Alive", str) && !C18425p.m3961a("Proxy-Authenticate", str) && !C18425p.m3961a("Proxy-Authorization", str) && !C18425p.m3961a("TE", str) && !C18425p.m3961a("Trailers", str) && !C18425p.m3961a("Transfer-Encoding", str) && !C18425p.m3961a("Upgrade", str);
        }

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
        AbstractC3188ab body = cacheRequest.body();
        ResponseBody body2 = response.body();
        C18524p.m3851a(body2);
        final AbstractC3207h source = body2.source();
        final AbstractC3206g m39151a = C3218r.m39151a(body);
        AbstractC3190ad abstractC3190ad = new AbstractC3190ad() { // from class: okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1
            private boolean cacheRequestClosed;

            @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
            public final void close() throws IOException {
                if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    this.cacheRequestClosed = true;
                    cacheRequest.abort();
                }
                AbstractC3207h.this.close();
            }

            @Override // p092c.AbstractC3190ad
            public final long read(C3202f sink, long j) throws IOException {
                C18524p.m3840d(sink, "sink");
                try {
                    long read = AbstractC3207h.this.read(sink, j);
                    if (read != -1) {
                        sink.m39216a(m39151a.mo39124b(), sink.f11572b - read, read);
                        m39151a.mo39142c();
                        return read;
                    } else if (this.cacheRequestClosed) {
                        return -1L;
                    } else {
                        this.cacheRequestClosed = true;
                        m39151a.close();
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

            @Override // p092c.AbstractC3190ad
            public final C3191ae timeout() {
                return AbstractC3207h.this.timeout();
            }
        };
        return response.newBuilder().body(new RealResponseBody(Response.header$default(response, "Content-Type", null, 2, null), response.body().contentLength(), C3218r.m39150a(abstractC3190ad))).build();
    }

    public final Cache getCache$okhttp() {
        return this.cache;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0085, code lost:
        if (r0 == null) goto L16;
     */
    /* JADX WARN: Finally extract failed */
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
