package okhttp3.internal.cache;

import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� \r:\u0002\r\u000eB\u001d\b��\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u000b\u0010\fR\u001b\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy;", "Lokhttp3/Response;", "cacheResponse", "Lokhttp3/Response;", "getCacheResponse", "()Lokhttp3/Response;", "Lokhttp3/Request;", "networkRequest", "Lokhttp3/Request;", "getNetworkRequest", "()Lokhttp3/Request;", "<init>", "(Lokhttp3/Request;Lokhttp3/Response;)V", "Companion", "Factory", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheStrategy.class */
public final class CacheStrategy {
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final Response cacheResponse;
    @Nullable
    private final Request networkRequest;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Companion;", "Lokhttp3/Response;", "response", "Lokhttp3/Request;", "request", "", "isCacheable", "(Lokhttp3/Response;Lokhttp3/Request;)Z", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheStrategy$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isCacheable(@NotNull Response response, @NotNull Request request) {
            Intrinsics.m1830e(response, "response");
            Intrinsics.m1830e(request, "request");
            int code = response.code();
            if (!(code == 200 || code == 410 || code == 414 || code == 501 || code == 203 || code == 204)) {
                if (code != 307) {
                    if (!(code == 308 || code == 404 || code == 405)) {
                        switch (code) {
                            case 300:
                            case 301:
                                break;
                            case 302:
                                break;
                            default:
                                return false;
                        }
                    }
                }
                if (Response.header$default(response, "Expires", null, 2, null) == null && response.cacheControl().maxAgeSeconds() == -1 && !response.cacheControl().isPublic() && !response.cacheControl().isPrivate()) {
                    return false;
                }
            }
            boolean z = false;
            if (!response.cacheControl().noStore()) {
                z = false;
                if (!request.cacheControl().noStore()) {
                    z = true;
                }
            }
            return z;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018��B!\u0012\u0006\u0010\u001e\u001a\u00020\u0001\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b'\u0010(J\u000f\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0018R\u0016\u0010\u001e\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001fR\u001c\u0010\n\u001a\u00020\t8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\n\u0010!\u001a\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\u001fR\u0018\u0010%\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001bR\u0018\u0010&\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\u0018¨\u0006)"}, d2 = {"Lokhttp3/internal/cache/CacheStrategy$Factory;", "", "cacheResponseAge", "()J", "Lokhttp3/internal/cache/CacheStrategy;", "compute", "()Lokhttp3/internal/cache/CacheStrategy;", "computeCandidate", "computeFreshnessLifetime", "Lokhttp3/Request;", "request", "", "hasConditions", "(Lokhttp3/Request;)Z", "isFreshnessLifetimeHeuristic", "()Z", "", "ageSeconds", "I", "Lokhttp3/Response;", "cacheResponse", "Lokhttp3/Response;", "", "etag", "Ljava/lang/String;", "Ljava/util/Date;", "expires", "Ljava/util/Date;", "lastModified", "lastModifiedString", "nowMillis", "J", "receivedResponseMillis", "Lokhttp3/Request;", "getRequest$okhttp", "()Lokhttp3/Request;", "sentRequestMillis", "servedDate", "servedDateString", "<init>", "(JLokhttp3/Request;Lokhttp3/Response;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheStrategy$Factory.class */
    public static final class Factory {
        private int ageSeconds;
        private final Response cacheResponse;
        private String etag;
        private Date expires;
        private Date lastModified;
        private String lastModifiedString;
        private final long nowMillis;
        private long receivedResponseMillis;
        @NotNull
        private final Request request;
        private long sentRequestMillis;
        private Date servedDate;
        private String servedDateString;

        public Factory(long j, @NotNull Request request, @Nullable Response response) {
            boolean p;
            boolean p2;
            boolean p3;
            boolean p4;
            boolean p5;
            Intrinsics.m1830e(request, "request");
            this.nowMillis = j;
            this.request = request;
            this.cacheResponse = response;
            this.ageSeconds = -1;
            if (response != null) {
                this.sentRequestMillis = response.sentRequestAtMillis();
                this.receivedResponseMillis = this.cacheResponse.receivedResponseAtMillis();
                Headers headers = this.cacheResponse.headers();
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String name = headers.name(i);
                    String value = headers.value(i);
                    p = StringsKt__StringsJVMKt.m1487p(name, "Date", true);
                    if (p) {
                        this.servedDate = DatesKt.toHttpDateOrNull(value);
                        this.servedDateString = value;
                    } else {
                        p2 = StringsKt__StringsJVMKt.m1487p(name, "Expires", true);
                        if (p2) {
                            this.expires = DatesKt.toHttpDateOrNull(value);
                        } else {
                            p3 = StringsKt__StringsJVMKt.m1487p(name, "Last-Modified", true);
                            if (p3) {
                                this.lastModified = DatesKt.toHttpDateOrNull(value);
                                this.lastModifiedString = value;
                            } else {
                                p4 = StringsKt__StringsJVMKt.m1487p(name, "ETag", true);
                                if (p4) {
                                    this.etag = value;
                                } else {
                                    p5 = StringsKt__StringsJVMKt.m1487p(name, "Age", true);
                                    if (p5) {
                                        this.ageSeconds = Util.toNonNegativeInt(value, -1);
                                    }
                                }
                            }
                        }
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
        private final long cacheResponseAge() {
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
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy.Factory.cacheResponseAge():long");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v21, types: [long] */
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
        private final okhttp3.internal.cache.CacheStrategy computeCandidate() {
            /*
                Method dump skipped, instructions count: 442
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy.Factory.computeCandidate():okhttp3.internal.cache.CacheStrategy");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v12 */
        /* JADX WARN: Type inference failed for: r10v2 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r7v1, types: [long] */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Unknown variable types count: 3 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final long computeFreshnessLifetime() {
            /*
                r5 = this;
                r0 = r5
                okhttp3.Response r0 = r0.cacheResponse
                r6 = r0
                r0 = r6
                kotlin.jvm.internal.Intrinsics.m1832c(r0)
                r0 = r6
                okhttp3.CacheControl r0 = r0.cacheControl()
                r6 = r0
                r0 = r6
                int r0 = r0.maxAgeSeconds()
                r1 = -1
                if (r0 == r1) goto L_0x0022
                java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
                r1 = r6
                int r1 = r1.maxAgeSeconds()
                long r1 = (long) r1
                long r0 = r0.toMillis(r1)
                return r0
            L_0x0022:
                r0 = r5
                java.util.Date r0 = r0.expires
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L_0x005d
                r0 = r5
                java.util.Date r0 = r0.servedDate
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0042
                r0 = r9
                long r0 = r0.getTime()
                r10 = r0
                goto L_0x0048
            L_0x0042:
                r0 = r5
                long r0 = r0.receivedResponseMillis
                r10 = r0
            L_0x0048:
                r0 = r6
                long r0 = r0.getTime()
                r1 = r10
                long r0 = r0 - r1
                r10 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x005b
                r0 = r10
                r7 = r0
            L_0x005b:
                r0 = r7
                return r0
            L_0x005d:
                r0 = r7
                r10 = r0
                r0 = r5
                java.util.Date r0 = r0.lastModified
                if (r0 == 0) goto L_0x00b6
                r0 = r7
                r10 = r0
                r0 = r5
                okhttp3.Response r0 = r0.cacheResponse
                okhttp3.Request r0 = r0.request()
                okhttp3.HttpUrl r0 = r0.url()
                java.lang.String r0 = r0.query()
                if (r0 != 0) goto L_0x00b6
                r0 = r5
                java.util.Date r0 = r0.servedDate
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L_0x008c
                r0 = r6
                long r0 = r0.getTime()
                r10 = r0
                goto L_0x0092
            L_0x008c:
                r0 = r5
                long r0 = r0.sentRequestMillis
                r10 = r0
            L_0x0092:
                r0 = r5
                java.util.Date r0 = r0.lastModified
                r6 = r0
                r0 = r6
                kotlin.jvm.internal.Intrinsics.m1832c(r0)
                r0 = r10
                r1 = r6
                long r1 = r1.getTime()
                long r0 = r0 - r1
                r12 = r0
                r0 = r7
                r10 = r0
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00b6
                r0 = r12
                r1 = 10
                long r1 = (long) r1
                long r0 = r0 / r1
                r10 = r0
            L_0x00b6:
                r0 = r10
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.CacheStrategy.Factory.computeFreshnessLifetime():long");
        }

        private final boolean hasConditions(Request request) {
            return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
        }

        private final boolean isFreshnessLifetimeHeuristic() {
            Response response = this.cacheResponse;
            Intrinsics.m1832c(response);
            return response.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
        }

        @NotNull
        public final CacheStrategy compute() {
            CacheStrategy computeCandidate = computeCandidate();
            CacheStrategy cacheStrategy = computeCandidate;
            if (computeCandidate.getNetworkRequest() != null) {
                cacheStrategy = computeCandidate;
                if (this.request.cacheControl().onlyIfCached()) {
                    cacheStrategy = new CacheStrategy(null, null);
                }
            }
            return cacheStrategy;
        }

        @NotNull
        public final Request getRequest$okhttp() {
            return this.request;
        }
    }

    public CacheStrategy(@Nullable Request request, @Nullable Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }

    @Nullable
    public final Response getCacheResponse() {
        return this.cacheResponse;
    }

    @Nullable
    public final Request getNetworkRequest() {
        return this.networkRequest;
    }
}
