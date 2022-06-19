package okhttp3.internal.cache;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Internal;
import okhttp3.internal.http.HttpDate;
import okhttp3.internal.http.HttpHeaders;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheStrategy.class */
public final class CacheStrategy {
    public final Response cacheResponse;
    public final Request networkRequest;

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache/CacheStrategy$Factory.class */
    public static class Factory {
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

        public Factory(long j, Request request, Response response) {
            this.ageSeconds = -1;
            this.nowMillis = j;
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
                    if (com.yanzhenjie.nohttp.Headers.HEAD_KEY_DATE.equalsIgnoreCase(name)) {
                        this.servedDate = HttpDate.parse(value);
                        this.servedDateString = value;
                    } else if (com.yanzhenjie.nohttp.Headers.HEAD_KEY_EXPIRES.equalsIgnoreCase(name)) {
                        this.expires = HttpDate.parse(value);
                    } else if (com.yanzhenjie.nohttp.Headers.HEAD_KEY_LAST_MODIFIED.equalsIgnoreCase(name)) {
                        this.lastModified = HttpDate.parse(value);
                        this.lastModifiedString = value;
                    } else if (com.yanzhenjie.nohttp.Headers.HEAD_KEY_E_TAG.equalsIgnoreCase(name)) {
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
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v58 */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r0v83, types: [long] */
        /* JADX WARN: Type inference failed for: r0v85, types: [long] */
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
                return new CacheStrategy(this.request, null);
            }
            if ((!this.request.isHttps() || this.cacheResponse.handshake() != null) && CacheStrategy.isCacheable(this.cacheResponse, this.request)) {
                CacheControl cacheControl = this.request.cacheControl();
                if (cacheControl.noCache() || hasConditions(this.request)) {
                    return new CacheStrategy(this.request, null);
                }
                CacheControl cacheControl2 = this.cacheResponse.cacheControl();
                if (cacheControl2.immutable()) {
                    return new CacheStrategy(null, this.cacheResponse);
                }
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
                        return new CacheStrategy(null, newBuilder.build());
                    }
                }
                String str = this.etag;
                String str2 = com.yanzhenjie.nohttp.Headers.HEAD_KEY_IF_MODIFIED_SINCE;
                if (str != null) {
                    str2 = com.yanzhenjie.nohttp.Headers.HEAD_KEY_IF_NONE_MATCH;
                } else if (this.lastModified != null) {
                    str = this.lastModifiedString;
                } else if (this.servedDate == null) {
                    return new CacheStrategy(this.request, null);
                } else {
                    str = this.servedDateString;
                }
                Headers.Builder newBuilder2 = this.request.headers().newBuilder();
                Internal.instance.addLenient(newBuilder2, str2, str);
                return new CacheStrategy(this.request.newBuilder().headers(newBuilder2.build()).build(), this.cacheResponse);
            }
            return new CacheStrategy(this.request, null);
        }

        private static boolean hasConditions(Request request) {
            return (request.header(com.yanzhenjie.nohttp.Headers.HEAD_KEY_IF_MODIFIED_SINCE) == null && request.header(com.yanzhenjie.nohttp.Headers.HEAD_KEY_IF_NONE_MATCH) == null) ? false : true;
        }

        private boolean isFreshnessLifetimeHeuristic() {
            return this.cacheResponse.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
        }

        public CacheStrategy get() {
            CacheStrategy candidate = getCandidate();
            CacheStrategy cacheStrategy = candidate;
            if (candidate.networkRequest != null) {
                cacheStrategy = candidate;
                if (this.request.cacheControl().onlyIfCached()) {
                    cacheStrategy = new CacheStrategy(null, null);
                }
            }
            return cacheStrategy;
        }
    }

    CacheStrategy(Request request, Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }

    public static boolean isCacheable(Response response, Request request) {
        int code = response.code();
        if (code != 200 && code != 410 && code != 414 && code != 501 && code != 203 && code != 204) {
            if (code != 307) {
                if (code != 308 && code != 404 && code != 405) {
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
            if (response.header(com.yanzhenjie.nohttp.Headers.HEAD_KEY_EXPIRES) == null && response.cacheControl().maxAgeSeconds() == -1 && !response.cacheControl().isPublic() && !response.cacheControl().isPrivate()) {
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
