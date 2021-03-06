package okhttp3;

import com.appsflyer.internal.referrer.Payload;
import com.mopub.common.Constants;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.p577io.FileSystem;
import okhttp3.internal.platform.Platform;
import p092c.AbstractC3188ab;
import p092c.AbstractC3190ad;
import p092c.AbstractC3206g;
import p092c.AbstractC3207h;
import p092c.AbstractC3211k;
import p092c.AbstractC3212l;
import p092c.C3202f;
import p092c.C3208i;
import p092c.C3218r;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018�� C2\u00020\u00012\u00020\u0002:\u0004BCDEB\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0016\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0018\u00010\"R\u00020\fH\u0002J\b\u0010#\u001a\u00020 H\u0016J\u0006\u0010$\u001a\u00020 J\r\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\b%J\u0006\u0010&\u001a\u00020 J\b\u0010'\u001a\u00020 H\u0016J\u0017\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+H��¢\u0006\u0002\b,J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010-\u001a\u00020 J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0015\u001a\u00020\u0011J\u0017\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020)H��¢\u0006\u0002\b1J\u0015\u00102\u001a\u00020 2\u0006\u0010*\u001a\u00020+H��¢\u0006\u0002\b3J\u0006\u0010\u0016\u001a\u00020\u0011J\u0006\u00104\u001a\u00020\u0006J\r\u00105\u001a\u00020 H��¢\u0006\u0002\b6J\u0015\u00107\u001a\u00020 2\u0006\u00108\u001a\u000209H��¢\u0006\u0002\b:J\u001d\u0010;\u001a\u00020 2\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020)H��¢\u0006\u0002\b>J\f\u0010?\u001a\b\u0012\u0004\u0012\u00020A0@J\u0006\u0010\u0017\u001a\u00020\u0011J\u0006\u0010\u001c\u001a\u00020\u0011R\u0014\u0010\u000b\u001a\u00020\fX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0012\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0017\u001a\u00020\u0011X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0011X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001b¨\u0006F"}, m4298d2 = {"Lokhttp3/Cache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "directory", "Ljava/io/File;", "maxSize", "", "(Ljava/io/File;J)V", "fileSystem", "Lokhttp3/internal/io/FileSystem;", "(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V", "cache", "Lokhttp3/internal/cache/DiskLruCache;", "getCache$okhttp", "()Lokhttp3/internal/cache/DiskLruCache;", "()Ljava/io/File;", "hitCount", "", "isClosed", "", "()Z", "networkCount", "requestCount", "writeAbortCount", "getWriteAbortCount$okhttp", "()I", "setWriteAbortCount$okhttp", "(I)V", "writeSuccessCount", "getWriteSuccessCount$okhttp", "setWriteSuccessCount$okhttp", "abortQuietly", "", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", EventConstants.CLOSE, "delete", "-deprecated_directory", "evictAll", "flush", "get", "Lokhttp3/Response;", "request", "Lokhttp3/Request;", "get$okhttp", "initialize", "put", "Lokhttp3/internal/cache/CacheRequest;", Payload.RESPONSE, "put$okhttp", "remove", "remove$okhttp", "size", "trackConditionalCacheHit", "trackConditionalCacheHit$okhttp", "trackResponse", "cacheStrategy", "Lokhttp3/internal/cache/CacheStrategy;", "trackResponse$okhttp", "update", "cached", "network", "update$okhttp", Constants.VIDEO_TRACKING_URLS_KEY, "", "", "CacheResponseBody", "Companion", "Entry", "RealCacheRequest", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/Cache.class */
public final class Cache implements Closeable, Flushable {
    public static final Companion Companion = new Companion(null);
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    private final DiskLruCache cache;
    private int hitCount;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B%\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\b\u0010\u0007\u001a\u00020\rH\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u000f\u001a\u00020\nH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0015\u0010\u0002\u001a\u00060\u0003R\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m4298d2 = {"Lokhttp3/Cache$CacheResponseBody;", "Lokhttp3/ResponseBody;", "snapshot", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "contentType", "", "contentLength", "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V", "bodySource", "Lokio/BufferedSource;", "getSnapshot", "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "", "Lokhttp3/MediaType;", Payload.SOURCE, "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/Cache$CacheResponseBody.class */
    public static final class CacheResponseBody extends ResponseBody {
        private final AbstractC3207h bodySource;
        private final String contentLength;
        private final String contentType;
        private final DiskLruCache.Snapshot snapshot;

        public CacheResponseBody(DiskLruCache.Snapshot snapshot, String str, String str2) {
            C18524p.m3840d(snapshot, "snapshot");
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            final AbstractC3190ad source = snapshot.getSource(1);
            this.bodySource = C3218r.m39150a(new AbstractC3212l(source) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // p092c.AbstractC3212l, p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    CacheResponseBody.this.getSnapshot().close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        public final long contentLength() {
            String str = this.contentLength;
            if (str != null) {
                return Util.toLongOrDefault(str, -1L);
            }
            return -1L;
        }

        @Override // okhttp3.ResponseBody
        public final MediaType contentType() {
            String str = this.contentType;
            if (str != null) {
                return MediaType.Companion.parse(str);
            }
            return null;
        }

        public final DiskLruCache.Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // okhttp3.ResponseBody
        public final AbstractC3207h source() {
            return this.bodySource;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0015\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH��¢\u0006\u0002\b\u000fJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aJ\n\u0010\u001b\u001a\u00020\u0015*\u00020\u0017J\u0012\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0\u001d*\u00020\u0011H\u0002J\n\u0010\u0010\u001a\u00020\u0011*\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u001e"}, m4298d2 = {"Lokhttp3/Cache$Companion;", "", "()V", "ENTRY_BODY", "", "ENTRY_COUNT", "ENTRY_METADATA", "VERSION", "key", "", "url", "Lokhttp3/HttpUrl;", "readInt", Payload.SOURCE, "Lokio/BufferedSource;", "readInt$okhttp", "varyHeaders", "Lokhttp3/Headers;", "requestHeaders", "responseHeaders", "varyMatches", "", "cachedResponse", "Lokhttp3/Response;", "cachedRequest", "newRequest", "Lokhttp3/Request;", "hasVaryAll", "varyFields", "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/Cache$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Set<String> varyFields(Headers headers) {
            int size = headers.size();
            C18240ab c18240ab = null;
            int i = 0;
            while (i < size) {
                C18240ab c18240ab2 = c18240ab;
                if (C18425p.m3961a("Vary", headers.name(i))) {
                    String value = headers.value(i);
                    TreeSet treeSet = c18240ab;
                    if (c18240ab == null) {
                        treeSet = new TreeSet(C18425p.m3955a(C18500ag.f63594a));
                    }
                    Iterator it2 = C18425p.m3937a(value, new char[]{','}).iterator();
                    while (true) {
                        c18240ab2 = treeSet;
                        if (it2.hasNext()) {
                            String str = (String) it2.next();
                            Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
                            treeSet.add(C18425p.m3930b((CharSequence) str).toString());
                        }
                    }
                }
                i++;
                c18240ab = c18240ab2;
            }
            C18240ab c18240ab3 = c18240ab;
            if (c18240ab == null) {
                c18240ab3 = C18240ab.f63351a;
            }
            return c18240ab3;
        }

        private final Headers varyHeaders(Headers headers, Headers headers2) {
            Set<String> varyFields = varyFields(headers2);
            if (varyFields.isEmpty()) {
                return Util.EMPTY_HEADERS;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                if (varyFields.contains(name)) {
                    builder.add(name, headers.value(i));
                }
            }
            return builder.build();
        }

        public final boolean hasVaryAll(Response hasVaryAll) {
            C18524p.m3840d(hasVaryAll, "$this$hasVaryAll");
            return varyFields(hasVaryAll.headers()).contains("*");
        }

        public final String key(HttpUrl url) {
            C18524p.m3840d(url, "url");
            C3208i.C3209a c3209a = C3208i.f11583d;
            return C3208i.C3209a.m39170a(url.toString()).mo39181a("MD5").mo39175d();
        }

        public final int readInt$okhttp(AbstractC3207h source) throws IOException {
            C18524p.m3840d(source, "source");
            try {
                long mo39109o = source.mo39109o();
                String mo39106s = source.mo39106s();
                if (mo39109o >= 0 && mo39109o <= 2147483647L) {
                    if (!(mo39106s.length() > 0)) {
                        return (int) mo39109o;
                    }
                }
                throw new IOException("expected an int but was \"" + mo39109o + mo39106s + '\"');
            } catch (NumberFormatException e) {
                throw new IOException(e.getMessage());
            }
        }

        public final Headers varyHeaders(Response varyHeaders) {
            C18524p.m3840d(varyHeaders, "$this$varyHeaders");
            Response networkResponse = varyHeaders.networkResponse();
            C18524p.m3851a(networkResponse);
            return varyHeaders(networkResponse.request().headers(), varyHeaders.headers());
        }

        public final boolean varyMatches(Response cachedResponse, Headers cachedRequest, Request newRequest) {
            C18524p.m3840d(cachedResponse, "cachedResponse");
            C18524p.m3840d(cachedRequest, "cachedRequest");
            C18524p.m3840d(newRequest, "newRequest");
            Set<String> varyFields = varyFields(cachedResponse.headers());
            if (!(varyFields instanceof Collection) || !varyFields.isEmpty()) {
                for (String str : varyFields) {
                    if (!C18524p.m3850a(cachedRequest.values(str), newRequest.headers(str))) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018�� .2\u00020\u0001:\u0001.B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010!\u001a\u00020\"H\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\n\u0010#\u001a\u00060$R\u00020%J\u001e\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020 0\u001fH\u0002J\u0012\u0010+\u001a\u00020'2\n\u0010,\u001a\u00060-R\u00020%R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��¨\u0006/"}, m4298d2 = {"Lokhttp3/Cache$Entry;", "", "rawSource", "Lokio/Source;", "(Lokio/Source;)V", Payload.RESPONSE, "Lokhttp3/Response;", "(Lokhttp3/Response;)V", "code", "", "handshake", "Lokhttp3/Handshake;", "isHttps", "", "()Z", "message", "", "protocol", "Lokhttp3/Protocol;", "receivedResponseMillis", "", "requestMethod", "responseHeaders", "Lokhttp3/Headers;", "sentRequestMillis", "url", "varyHeaders", "matches", "request", "Lokhttp3/Request;", "readCertificateList", "", "Ljava/security/cert/Certificate;", Payload.SOURCE, "Lokio/BufferedSource;", "snapshot", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "writeCertList", "", "sink", "Lokio/BufferedSink;", "certificates", "writeTo", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/Cache$Entry.class */
    public static final class Entry {
        private final int code;
        private final Handshake handshake;
        private final String message;
        private final Protocol protocol;
        private final long receivedResponseMillis;
        private final String requestMethod;
        private final Headers responseHeaders;
        private final long sentRequestMillis;
        private final String url;
        private final Headers varyHeaders;
        public static final Companion Companion = new Companion(null);
        private static final String SENT_MILLIS = Platform.Companion.get().getPrefix() + "-Sent-Millis";
        private static final String RECEIVED_MILLIS = Platform.Companion.get().getPrefix() + "-Received-Millis";

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lokhttp3/Cache$Entry$Companion;", "", "()V", "RECEIVED_MILLIS", "", "SENT_MILLIS", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* loaded from: classes5-dex2jar.jar:okhttp3/Cache$Entry$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        /* JADX WARN: Type inference failed for: r0v81, types: [long] */
        /* JADX WARN: Type inference failed for: r0v84, types: [long] */
        public Entry(AbstractC3190ad rawSource) throws IOException {
            C18524p.m3840d(rawSource, "rawSource");
            try {
                AbstractC3207h m39150a = C3218r.m39150a(rawSource);
                this.url = m39150a.mo39106s();
                this.requestMethod = m39150a.mo39106s();
                Headers.Builder builder = new Headers.Builder();
                int readInt$okhttp = Cache.Companion.readInt$okhttp(m39150a);
                for (int i = 0; i < readInt$okhttp; i++) {
                    builder.addLenient$okhttp(m39150a.mo39106s());
                }
                this.varyHeaders = builder.build();
                StatusLine parse = StatusLine.Companion.parse(m39150a.mo39106s());
                this.protocol = parse.protocol;
                this.code = parse.code;
                this.message = parse.message;
                Headers.Builder builder2 = new Headers.Builder();
                int readInt$okhttp2 = Cache.Companion.readInt$okhttp(m39150a);
                for (int i2 = 0; i2 < readInt$okhttp2; i2++) {
                    builder2.addLenient$okhttp(m39150a.mo39106s());
                }
                String str = SENT_MILLIS;
                String str2 = builder2.get(str);
                String str3 = RECEIVED_MILLIS;
                String str4 = builder2.get(str3);
                builder2.removeAll(str);
                builder2.removeAll(str3);
                this.sentRequestMillis = str2 != null ? Long.parseLong(str2) : (char) 0;
                this.receivedResponseMillis = str4 != null ? Long.parseLong(str4) : (char) 0;
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String mo39106s = m39150a.mo39106s();
                    if (mo39106s.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + mo39106s + '\"');
                    }
                    this.handshake = Handshake.Companion.get(!m39150a.mo39119e() ? TlsVersion.Companion.forJavaName(m39150a.mo39106s()) : TlsVersion.SSL_3_0, CipherSuite.Companion.forJavaName(m39150a.mo39106s()), readCertificateList(m39150a), readCertificateList(m39150a));
                } else {
                    this.handshake = null;
                }
            } finally {
                rawSource.close();
            }
        }

        public Entry(Response response) {
            C18524p.m3840d(response, "response");
            this.url = response.request().url().toString();
            this.varyHeaders = Cache.Companion.varyHeaders(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
            this.sentRequestMillis = response.sentRequestAtMillis();
            this.receivedResponseMillis = response.receivedResponseAtMillis();
        }

        private final boolean isHttps() {
            return C18425p.m3957a(this.url, "https://", false);
        }

        private final List<Certificate> readCertificateList(AbstractC3207h abstractC3207h) throws IOException {
            int readInt$okhttp = Cache.Companion.readInt$okhttp(abstractC3207h);
            if (readInt$okhttp == -1) {
                return C18297z.f63400a;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(readInt$okhttp);
                for (int i = 0; i < readInt$okhttp; i++) {
                    String mo39106s = abstractC3207h.mo39106s();
                    C3202f c3202f = new C3202f();
                    C3208i.C3209a c3209a = C3208i.f11583d;
                    C3208i m39167b = C3208i.C3209a.m39167b(mo39106s);
                    C18524p.m3851a(m39167b);
                    c3202f.mo39144b(m39167b);
                    arrayList.add(certificateFactory.generateCertificate(c3202f.mo39116g()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        private final void writeCertList(AbstractC3206g abstractC3206g, List<? extends Certificate> list) throws IOException {
            C3208i m39168a;
            try {
                abstractC3206g.mo39135k(list.size()).mo39141c(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    byte[] bytes = list.get(i).getEncoded();
                    C3208i.C3209a c3209a = C3208i.f11583d;
                    C18524p.m3843b(bytes, "bytes");
                    m39168a = C3208i.C3209a.m39168a(bytes, 0, bytes.length);
                    abstractC3206g.mo39143b(m39168a.mo39176c()).mo39141c(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public final boolean matches(Request request, Response response) {
            C18524p.m3840d(request, "request");
            C18524p.m3840d(response, "response");
            return C18524p.m3850a((Object) this.url, (Object) request.url().toString()) && C18524p.m3850a((Object) this.requestMethod, (Object) request.method()) && Cache.Companion.varyMatches(response, this.varyHeaders, request);
        }

        public final Response response(DiskLruCache.Snapshot snapshot) {
            C18524p.m3840d(snapshot, "snapshot");
            String str = this.responseHeaders.get("Content-Type");
            String str2 = this.responseHeaders.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(snapshot, str, str2)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
        }

        public final void writeTo(DiskLruCache.Editor editor) throws IOException {
            AbstractC3206g m39151a;
            C18524p.m3840d(editor, "editor");
            try {
                AbstractC3206g m39151a2 = C3218r.m39151a(editor.newSink(0));
                m39151a2.mo39143b(this.url).mo39141c(10);
                m39151a2.mo39143b(this.requestMethod).mo39141c(10);
                m39151a2.mo39135k(this.varyHeaders.size()).mo39141c(10);
                int size = this.varyHeaders.size();
                for (int i = 0; i < size; i++) {
                    m39151a2.mo39143b(this.varyHeaders.name(i)).mo39143b(": ").mo39143b(this.varyHeaders.value(i)).mo39141c(10);
                }
                m39151a2.mo39143b(new StatusLine(this.protocol, this.code, this.message).toString()).mo39141c(10);
                m39151a2.mo39135k(this.responseHeaders.size() + 2).mo39141c(10);
                int size2 = this.responseHeaders.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    m39151a2.mo39143b(this.responseHeaders.name(i2)).mo39143b(": ").mo39143b(this.responseHeaders.value(i2)).mo39141c(10);
                }
                m39151a2.mo39143b(SENT_MILLIS).mo39143b(": ").mo39135k(this.sentRequestMillis).mo39141c(10);
                m39151a2.mo39143b(RECEIVED_MILLIS).mo39143b(": ").mo39135k(this.receivedResponseMillis).mo39141c(10);
                if (isHttps()) {
                    m39151a2.mo39141c(10);
                    Handshake handshake = this.handshake;
                    C18524p.m3851a(handshake);
                    m39151a2.mo39143b(handshake.cipherSuite().javaName()).mo39141c(10);
                    writeCertList(m39151a2, this.handshake.peerCertificates());
                    writeCertList(m39151a2, this.handshake.localCertificates());
                    m39151a2.mo39143b(this.handshake.tlsVersion().javaName()).mo39141c(10);
                }
                C20128v c20128v = C20128v.f66529a;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0012\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lokhttp3/Cache$RealCacheRequest;", "Lokhttp3/internal/cache/CacheRequest;", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "body", "Lokio/Sink;", "cacheOut", "done", "", "getDone", "()Z", "setDone", "(Z)V", "abort", "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/Cache$RealCacheRequest.class */
    public final class RealCacheRequest implements CacheRequest {
        private final AbstractC3188ab body;
        private final AbstractC3188ab cacheOut;
        private boolean done;
        private final DiskLruCache.Editor editor;
        final /* synthetic */ Cache this$0;

        public RealCacheRequest(Cache cache, DiskLruCache.Editor editor) {
            C18524p.m3840d(editor, "editor");
            this.this$0 = cache;
            this.editor = editor;
            AbstractC3188ab newSink = editor.newSink(1);
            this.cacheOut = newSink;
            this.body = new AbstractC3211k(newSink) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // p092c.AbstractC3211k, p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    synchronized (RealCacheRequest.this.this$0) {
                        if (RealCacheRequest.this.getDone()) {
                            return;
                        }
                        RealCacheRequest.this.setDone(true);
                        Cache cache2 = RealCacheRequest.this.this$0;
                        cache2.setWriteSuccessCount$okhttp(cache2.getWriteSuccessCount$okhttp() + 1);
                        super.close();
                        RealCacheRequest.this.editor.commit();
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public final void abort() {
            synchronized (this.this$0) {
                if (this.done) {
                    return;
                }
                this.done = true;
                Cache cache = this.this$0;
                cache.setWriteAbortCount$okhttp(cache.getWriteAbortCount$okhttp() + 1);
                Util.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException e) {
                }
            }
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public final AbstractC3188ab body() {
            return this.body;
        }

        public final boolean getDone() {
            return this.done;
        }

        public final void setDone(boolean z) {
            this.done = z;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(File directory, long j) {
        this(directory, j, FileSystem.SYSTEM);
        C18524p.m3840d(directory, "directory");
    }

    public Cache(File directory, long j, FileSystem fileSystem) {
        C18524p.m3840d(directory, "directory");
        C18524p.m3840d(fileSystem, "fileSystem");
        this.cache = new DiskLruCache(fileSystem, directory, VERSION, 2, j, TaskRunner.INSTANCE);
    }

    private final void abortQuietly(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException e) {
            }
        }
    }

    public static final String key(HttpUrl httpUrl) {
        return Companion.key(httpUrl);
    }

    /* renamed from: -deprecated_directory */
    public final File m54190deprecated_directory() {
        return this.cache.getDirectory();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.cache.close();
    }

    public final void delete() throws IOException {
        this.cache.delete();
    }

    public final File directory() {
        return this.cache.getDirectory();
    }

    public final void evictAll() throws IOException {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        this.cache.flush();
    }

    public final Response get$okhttp(Request request) {
        C18524p.m3840d(request, "request");
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(Companion.key(request.url()));
            if (snapshot == null) {
                return null;
            }
            try {
                Entry entry = new Entry(snapshot.getSource(0));
                Response response = entry.response(snapshot);
                if (entry.matches(request, response)) {
                    return response;
                }
                ResponseBody body = response.body();
                if (body == null) {
                    return null;
                }
                Util.closeQuietly(body);
                return null;
            } catch (IOException e) {
                Util.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException e2) {
            return null;
        }
    }

    public final DiskLruCache getCache$okhttp() {
        return this.cache;
    }

    public final int getWriteAbortCount$okhttp() {
        return this.writeAbortCount;
    }

    public final int getWriteSuccessCount$okhttp() {
        return this.writeSuccessCount;
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.hitCount;
        }
        return i;
    }

    public final void initialize() throws IOException {
        this.cache.initialize();
    }

    public final boolean isClosed() {
        return this.cache.isClosed();
    }

    public final long maxSize() {
        return this.cache.getMaxSize();
    }

    public final int networkCount() {
        int i;
        synchronized (this) {
            i = this.networkCount;
        }
        return i;
    }

    public final CacheRequest put$okhttp(Response response) {
        DiskLruCache.Editor editor;
        C18524p.m3840d(response, "response");
        String method = response.request().method();
        if (HttpMethod.INSTANCE.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
                return null;
            } catch (IOException e) {
                return null;
            }
        } else if (!C18524p.m3850a((Object) method, (Object) "GET")) {
            return null;
        } else {
            Companion companion = Companion;
            if (companion.hasVaryAll(response)) {
                return null;
            }
            Entry entry = new Entry(response);
            try {
                editor = DiskLruCache.edit$default(this.cache, companion.key(response.request().url()), 0L, 2, null);
                if (editor == null) {
                    return null;
                }
                try {
                    entry.writeTo(editor);
                    return new RealCacheRequest(this, editor);
                } catch (IOException e2) {
                    abortQuietly(editor);
                    return null;
                }
            } catch (IOException e3) {
                editor = null;
            }
        }
    }

    public final void remove$okhttp(Request request) throws IOException {
        C18524p.m3840d(request, "request");
        this.cache.remove(Companion.key(request.url()));
    }

    public final int requestCount() {
        int i;
        synchronized (this) {
            i = this.requestCount;
        }
        return i;
    }

    public final void setWriteAbortCount$okhttp(int i) {
        this.writeAbortCount = i;
    }

    public final void setWriteSuccessCount$okhttp(int i) {
        this.writeSuccessCount = i;
    }

    public final long size() throws IOException {
        return this.cache.size();
    }

    public final void trackConditionalCacheHit$okhttp() {
        synchronized (this) {
            this.hitCount++;
        }
    }

    public final void trackResponse$okhttp(CacheStrategy cacheStrategy) {
        synchronized (this) {
            C18524p.m3840d(cacheStrategy, "cacheStrategy");
            this.requestCount++;
            if (cacheStrategy.getNetworkRequest() != null) {
                this.networkCount++;
                return;
            }
            if (cacheStrategy.getCacheResponse() != null) {
                this.hitCount++;
            }
        }
    }

    public final void update$okhttp(Response cached, Response network) {
        C18524p.m3840d(cached, "cached");
        C18524p.m3840d(network, "network");
        Entry entry = new Entry(network);
        ResponseBody body = cached.body();
        Objects.requireNonNull(body, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        DiskLruCache.Editor editor = null;
        try {
            DiskLruCache.Editor edit = ((CacheResponseBody) body).getSnapshot().edit();
            if (edit == null) {
                return;
            }
            entry.writeTo(edit);
            editor = edit;
            edit.commit();
        } catch (IOException e) {
            abortQuietly(editor);
        }
    }

    public final Iterator<String> urls() throws IOException {
        return new Cache$urls$1(this);
    }

    public final int writeAbortCount() {
        int i;
        synchronized (this) {
            i = this.writeAbortCount;
        }
        return i;
    }

    public final int writeSuccessCount() {
        int i;
        synchronized (this) {
            i = this.writeSuccessCount;
        }
        return i;
    }
}
