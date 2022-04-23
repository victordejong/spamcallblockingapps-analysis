package okhttp3.internal.cache;

import com.facebook.stetho.server.http.HttpHeaders;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u0011\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001e\u0010\r\u001a\u0004\u0018\u00010\f8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/internal/cache/CacheRequest;", "cacheRequest", "Lokhttp3/Response;", "response", "cacheWritingResponse", "(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;", "Lokhttp3/Interceptor$Chain;", "chain", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "Lokhttp3/Cache;", "cache", "Lokhttp3/Cache;", "getCache$okhttp", "()Lokhttp3/Cache;", "<init>", "(Lokhttp3/Cache;)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheInterceptor.class */
public final class CacheInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final Cache cache;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor$Companion;", "Lokhttp3/Headers;", "cachedHeaders", "networkHeaders", "combine", "(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;", "", "fieldName", "", "isContentSpecificHeader", "(Ljava/lang/String;)Z", "isEndToEnd", "Lokhttp3/Response;", "response", "stripBody", "(Lokhttp3/Response;)Lokhttp3/Response;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheInterceptor$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Headers combine(Headers headers, Headers headers2) {
            boolean p;
            boolean C;
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                String value = headers.value(i);
                p = StringsKt__StringsJVMKt.m1487p("Warning", name, true);
                if (p) {
                    C = StringsKt__StringsJVMKt.m1491C(value, TmoUserStatus.CUSTOMER_TYPE_POSTPAID, false, 2, null);
                    if (C) {
                    }
                }
                if (isContentSpecificHeader(name) || !isEndToEnd(name) || headers2.get(name) == null) {
                    builder.addLenient$okhttp(name, value);
                }
            }
            int size2 = headers2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String name2 = headers2.name(i2);
                if (!isContentSpecificHeader(name2) && isEndToEnd(name2)) {
                    builder.addLenient$okhttp(name2, headers2.value(i2));
                }
            }
            return builder.build();
        }

        private final boolean isContentSpecificHeader(String str) {
            boolean p;
            boolean p2;
            boolean p3;
            boolean z = true;
            p = StringsKt__StringsJVMKt.m1487p(HttpHeaders.CONTENT_LENGTH, str, true);
            if (!p) {
                z = true;
                p2 = StringsKt__StringsJVMKt.m1487p("Content-Encoding", str, true);
                if (!p2) {
                    p3 = StringsKt__StringsJVMKt.m1487p(HttpHeaders.CONTENT_TYPE, str, true);
                    z = p3;
                }
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
            if (r0 == false) goto L_0x0057;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final boolean isEndToEnd(java.lang.String r5) {
            /*
                r4 = this;
                r0 = 1
                r6 = r0
                java.lang.String r0 = "Connection"
                r1 = r5
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0055
                java.lang.String r0 = "Keep-Alive"
                r1 = r5
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0055
                java.lang.String r0 = "Proxy-Authenticate"
                r1 = r5
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0055
                java.lang.String r0 = "Proxy-Authorization"
                r1 = r5
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0055
                java.lang.String r0 = "TE"
                r1 = r5
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0055
                java.lang.String r0 = "Trailers"
                r1 = r5
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0055
                java.lang.String r0 = "Transfer-Encoding"
                r1 = r5
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0055
                java.lang.String r0 = "Upgrade"
                r1 = r5
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0055
                goto L_0x0057
            L_0x0055:
                r0 = 0
                r6 = r0
            L_0x0057:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheInterceptor.Companion.isEndToEnd(java.lang.String):boolean");
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

    public CacheInterceptor(@Nullable Cache cache) {
        this.cache = cache;
    }

    private final Response cacheWritingResponse(final CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        Sink body = cacheRequest.body();
        ResponseBody body2 = response.body();
        Intrinsics.m1832c(body2);
        final BufferedSource source = body2.source();
        final BufferedSink c = Okio.m144c(body);
        Source cacheInterceptor$cacheWritingResponse$cacheWritingSource$1 = new Source() { // from class: okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1
            private boolean cacheRequestClosed;

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    this.cacheRequestClosed = true;
                    cacheRequest.abort();
                }
                BufferedSource.this.close();
            }

            @Override // okio.Source
            public long read(@NotNull Buffer sink, long j) throws IOException {
                Intrinsics.m1830e(sink, "sink");
                try {
                    long read = BufferedSource.this.read(sink, j);
                    if (read != -1) {
                        sink.m196l(c.mo76c(), sink.m188v0() - read, read);
                        c.mo99F();
                        return read;
                    } else if (this.cacheRequestClosed) {
                        return -1L;
                    } else {
                        this.cacheRequestClosed = true;
                        c.close();
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

            @Override // okio.Source
            @NotNull
            public Timeout timeout() {
                return BufferedSource.this.timeout();
            }
        };
        return response.newBuilder().body(new RealResponseBody(Response.header$default(response, HttpHeaders.CONTENT_TYPE, null, 2, null), response.body().contentLength(), Okio.m143d(cacheInterceptor$cacheWritingResponse$cacheWritingSource$1))).build();
    }

    @Nullable
    public final Cache getCache$okhttp() {
        return this.cache;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0081, code lost:
        if (r11 != null) goto L_0x008c;
     */
    @Override // okhttp3.Interceptor
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(@org.jetbrains.annotations.NotNull okhttp3.Interceptor.Chain r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }
}
