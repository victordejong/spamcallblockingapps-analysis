package okhttp3;

import com.facebook.stetho.server.http.HttpHeaders;
import com.google.android.gms.common.api.Api;
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
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
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
import okhttp3.internal.p011io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� N2\u00020\u00012\u00020\u0002:\u0004ONPQB\u0019\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\bI\u0010JB!\b��\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010L\u001a\u00020K¢\u0006\u0004\bI\u0010MJ\u001d\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0018\u00010\u0003R\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\u000f\u001a\u00020\fH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\nJ\u000f\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\nJ\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0012H��¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\nJ\r\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0018¢\u0006\u0004\b\u001f\u0010\u001aJ\u0019\u0010$\u001a\u0004\u0018\u00010!2\u0006\u0010 \u001a\u00020\u0014H��¢\u0006\u0004\b\"\u0010#J\u0017\u0010'\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H��¢\u0006\u0004\b%\u0010&J\r\u0010(\u001a\u00020\u0018¢\u0006\u0004\b(\u0010\u001aJ\r\u0010)\u001a\u00020\u001c¢\u0006\u0004\b)\u0010\u001eJ\u000f\u0010+\u001a\u00020\u0006H��¢\u0006\u0004\b*\u0010\nJ\u0017\u00100\u001a\u00020\u00062\u0006\u0010-\u001a\u00020,H��¢\u0006\u0004\b.\u0010/J\u001f\u00105\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u0014H��¢\u0006\u0004\b3\u00104J\u0013\u00108\u001a\b\u0012\u0004\u0012\u00020706¢\u0006\u0004\b8\u00109J\r\u0010:\u001a\u00020\u0018¢\u0006\u0004\b:\u0010\u001aJ\r\u0010;\u001a\u00020\u0018¢\u0006\u0004\b;\u0010\u001aR\u001c\u0010<\u001a\u00020\u00048��@��X\u0080\u0004¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\u0013\u0010\u000f\u001a\u00020\f8G@\u0006¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010@R\u0013\u0010B\u001a\u00020A8F@\u0006¢\u0006\u0006\u001a\u0004\bB\u0010CR\u0016\u0010\u001f\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010@R\u0016\u0010(\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010@R\"\u0010:\u001a\u00020\u00188��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b:\u0010@\u001a\u0004\bD\u0010\u001a\"\u0004\bE\u0010FR\"\u0010;\u001a\u00020\u00188��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b;\u0010@\u001a\u0004\bG\u0010\u001a\"\u0004\bH\u0010F¨\u0006R"}, d2 = {"Lokhttp3/Cache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "", "abortQuietly", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "close", "()V", "delete", "Ljava/io/File;", "-deprecated_directory", "()Ljava/io/File;", "directory", "evictAll", "flush", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", "get$okhttp", "(Lokhttp3/Request;)Lokhttp3/Response;", "get", "", "hitCount", "()I", "initialize", "", "maxSize", "()J", "networkCount", "response", "Lokhttp3/internal/cache/CacheRequest;", "put$okhttp", "(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;", "put", "remove$okhttp", "(Lokhttp3/Request;)V", "remove", "requestCount", "size", "trackConditionalCacheHit$okhttp", "trackConditionalCacheHit", "Lokhttp3/internal/cache/CacheStrategy;", "cacheStrategy", "trackResponse$okhttp", "(Lokhttp3/internal/cache/CacheStrategy;)V", "trackResponse", "cached", "network", "update$okhttp", "(Lokhttp3/Response;Lokhttp3/Response;)V", "update", "", "", "urls", "()Ljava/util/Iterator;", "writeAbortCount", "writeSuccessCount", "cache", "Lokhttp3/internal/cache/DiskLruCache;", "getCache$okhttp", "()Lokhttp3/internal/cache/DiskLruCache;", "I", "", "isClosed", "()Z", "getWriteAbortCount$okhttp", "setWriteAbortCount$okhttp", "(I)V", "getWriteSuccessCount$okhttp", "setWriteSuccessCount$okhttp", "<init>", "(Ljava/io/File;J)V", "Lokhttp3/internal/io/FileSystem;", "fileSystem", "(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V", "Companion", "CacheResponseBody", "Entry", "RealCacheRequest", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Cache.class */
public final class Cache implements Closeable, Flushable {
    public static final Companion Companion = new Companion(null);
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    @NotNull
    private final DiskLruCache cache;
    private int hitCount;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018��2\u00020\u0001B'\u0012\n\u0010\u0011\u001a\u00060\u000fR\u00020\u0010\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0011\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000eR\u001d\u0010\u0011\u001a\u00060\u000fR\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lokhttp3/Cache$CacheResponseBody;", "Lokhttp3/ResponseBody;", "", "contentLength", "()J", "Lokhttp3/MediaType;", "contentType", "()Lokhttp3/MediaType;", "Lokio/BufferedSource;", "source", "()Lokio/BufferedSource;", "bodySource", "Lokio/BufferedSource;", "", "Ljava/lang/String;", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "snapshot", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "getSnapshot", "()Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "<init>", "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Cache$CacheResponseBody.class */
    public static final class CacheResponseBody extends ResponseBody {
        private final BufferedSource bodySource;
        private final String contentLength;
        private final String contentType;
        @NotNull
        private final DiskLruCache.Snapshot snapshot;

        public CacheResponseBody(@NotNull DiskLruCache.Snapshot snapshot, @Nullable String str, @Nullable String str2) {
            Intrinsics.m1830e(snapshot, "snapshot");
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            final Source source = snapshot.getSource(1);
            this.bodySource = Okio.m143d(new ForwardingSource(source) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    CacheResponseBody.this.getSnapshot().close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            String str = this.contentLength;
            long j = -1;
            if (str != null) {
                j = Util.toLongOrDefault(str, -1L);
            }
            return j;
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            String str = this.contentType;
            return str != null ? MediaType.Companion.parse(str) : null;
        }

        @NotNull
        public final DiskLruCache.Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            return this.bodySource;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u000b\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H��¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u0016*\u00020\u0011¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u001b*\u00020\fH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0011\u0010\u000f\u001a\u00020\f*\u00020\u0011¢\u0006\u0004\b\u000f\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010 R\u0016\u0010\"\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010 R\u0016\u0010#\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010 ¨\u0006&"}, d2 = {"Lokhttp3/Cache$Companion;", "Lokhttp3/HttpUrl;", "url", "", "key", "(Lokhttp3/HttpUrl;)Ljava/lang/String;", "Lokio/BufferedSource;", "source", "", "readInt$okhttp", "(Lokio/BufferedSource;)I", "readInt", "Lokhttp3/Headers;", "requestHeaders", "responseHeaders", "varyHeaders", "(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;", "Lokhttp3/Response;", "cachedResponse", "cachedRequest", "Lokhttp3/Request;", "newRequest", "", "varyMatches", "(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z", "hasVaryAll", "(Lokhttp3/Response;)Z", "", "varyFields", "(Lokhttp3/Headers;)Ljava/util/Set;", "(Lokhttp3/Response;)Lokhttp3/Headers;", "ENTRY_BODY", "I", "ENTRY_COUNT", "ENTRY_METADATA", "VERSION", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Cache$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x0091, code lost:
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final java.util.Set<java.lang.String> varyFields(okhttp3.Headers r8) {
            /*
                r7 = this;
                r0 = r8
                int r0 = r0.size()
                r9 = r0
                r0 = 0
                r10 = r0
                r0 = 0
                r11 = r0
            L_0x000a:
                r0 = r11
                r1 = r9
                if (r0 >= r1) goto L_0x0097
                java.lang.String r0 = "Vary"
                r1 = r8
                r2 = r11
                java.lang.String r1 = r1.name(r2)
                r2 = 1
                boolean r0 = kotlin.text.StringsKt.m1518p(r0, r1, r2)
                if (r0 != 0) goto L_0x0022
                goto L_0x0091
            L_0x0022:
                r0 = r8
                r1 = r11
                java.lang.String r0 = r0.value(r1)
                r12 = r0
                r0 = r10
                r13 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0040
                java.util.TreeSet r0 = new java.util.TreeSet
                r1 = r0
                kotlin.jvm.internal.StringCompanionObject r2 = kotlin.jvm.internal.StringCompanionObject.f20754a
                java.util.Comparator r2 = kotlin.text.StringsKt.m1516q(r2)
                r1.<init>(r2)
                r13 = r0
            L_0x0040:
                r0 = r12
                r1 = 1
                char[] r1 = new char[r1]
                r2 = r1
                r3 = 0
                r4 = 44
                r2[r3] = r4
                r2 = 0
                r3 = 0
                r4 = 6
                r5 = 0
                java.util.List r0 = kotlin.text.StringsKt.m1517p0(r0, r1, r2, r3, r4, r5)
                java.util.Iterator r0 = r0.iterator()
                r12 = r0
            L_0x0059:
                r0 = r13
                r10 = r0
                r0 = r12
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x0091
                r0 = r12
                java.lang.Object r0 = r0.next()
                java.lang.String r0 = (java.lang.String) r0
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0087
                r0 = r13
                r1 = r10
                java.lang.CharSequence r1 = kotlin.text.StringsKt.m1537F0(r1)
                java.lang.String r1 = r1.toString()
                boolean r0 = r0.add(r1)
                goto L_0x0059
            L_0x0087:
                java.lang.NullPointerException r0 = new java.lang.NullPointerException
                r1 = r0
                java.lang.String r2 = "null cannot be cast to non-null type kotlin.CharSequence"
                r1.<init>(r2)
                throw r0
            L_0x0091:
                int r11 = r11 + 1
                goto L_0x000a
            L_0x0097:
                r0 = r10
                if (r0 == 0) goto L_0x009e
                goto L_0x00a2
            L_0x009e:
                java.util.Set r0 = kotlin.collections.SetsKt.m2062b()
                r10 = r0
            L_0x00a2:
                r0 = r10
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cache.Companion.varyFields(okhttp3.Headers):java.util.Set");
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

        public final boolean hasVaryAll(@NotNull Response hasVaryAll) {
            Intrinsics.m1830e(hasVaryAll, "$this$hasVaryAll");
            return varyFields(hasVaryAll.headers()).contains("*");
        }

        @JvmStatic
        @NotNull
        public final String key(@NotNull HttpUrl url) {
            Intrinsics.m1830e(url, "url");
            return ByteString.f24137j.m163d(url.toString()).m169t().mo40o();
        }

        public final int readInt$okhttp(@NotNull BufferedSource source) throws IOException {
            Intrinsics.m1830e(source, "source");
            try {
                long G = source.mo84G();
                String a0 = source.mo78a0();
                if (G >= 0 && G <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
                    if (!(a0.length() > 0)) {
                        return (int) G;
                    }
                }
                throw new IOException("expected an int but was \"" + G + a0 + '\"');
            } catch (NumberFormatException e) {
                throw new IOException(e.getMessage());
            }
        }

        @NotNull
        public final Headers varyHeaders(@NotNull Response varyHeaders) {
            Intrinsics.m1830e(varyHeaders, "$this$varyHeaders");
            Response networkResponse = varyHeaders.networkResponse();
            Intrinsics.m1832c(networkResponse);
            return varyHeaders(networkResponse.request().headers(), varyHeaders.headers());
        }

        public final boolean varyMatches(@NotNull Response cachedResponse, @NotNull Headers cachedRequest, @NotNull Request newRequest) {
            boolean z;
            Intrinsics.m1830e(cachedResponse, "cachedResponse");
            Intrinsics.m1830e(cachedRequest, "cachedRequest");
            Intrinsics.m1830e(newRequest, "newRequest");
            Set<String> varyFields = varyFields(cachedResponse.headers());
            if (!(varyFields instanceof Collection) || !varyFields.isEmpty()) {
                Iterator<T> it = varyFields.iterator();
                while (true) {
                    z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    String str = (String) it.next();
                    if (!Intrinsics.m1834a(cachedRequest.values(str), newRequest.headers(str))) {
                        z = false;
                        break;
                    }
                }
            } else {
                z = true;
            }
            return z;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018�� 9:\u00019B\u0011\b\u0016\u0012\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b6\u00108J\u001d\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0004\u001a\u00020\u00032\n\u0010\u0010\u001a\u00060\u000eR\u00020\u000f¢\u0006\u0004\b\u0004\u0010\u0011J%\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00152\n\u0010\u0019\u001a\u00060\u0018R\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u00058B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010(\u001a\u00020'8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010+\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010-\u001a\u00020$8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010&R\u0016\u0010/\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00101\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010,R\u0016\u00102\u001a\u00020$8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010&R\u0016\u00103\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00100¨\u0006:"}, d2 = {"Lokhttp3/Cache$Entry;", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", "response", "", "matches", "(Lokhttp3/Request;Lokhttp3/Response;)Z", "Lokio/BufferedSource;", "source", "", "Ljava/security/cert/Certificate;", "readCertificateList", "(Lokio/BufferedSource;)Ljava/util/List;", "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "snapshot", "(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;", "Lokio/BufferedSink;", "sink", "certificates", "", "writeCertList", "(Lokio/BufferedSink;Ljava/util/List;)V", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "editor", "writeTo", "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "", "code", "I", "Lokhttp3/Handshake;", "handshake", "Lokhttp3/Handshake;", "isHttps", "()Z", "", "message", "Ljava/lang/String;", "Lokhttp3/Protocol;", "protocol", "Lokhttp3/Protocol;", "", "receivedResponseMillis", "J", "requestMethod", "Lokhttp3/Headers;", "responseHeaders", "Lokhttp3/Headers;", "sentRequestMillis", "url", "varyHeaders", "Lokio/Source;", "rawSource", "<init>", "(Lokio/Source;)V", "(Lokhttp3/Response;)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Cache$Entry.class */
    private static final class Entry {
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

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003¨\u0006\u0007"}, d2 = {"Lokhttp3/Cache$Entry$Companion;", "", "RECEIVED_MILLIS", "Ljava/lang/String;", "SENT_MILLIS", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:okhttp3/Cache$Entry$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public Entry(@NotNull Response response) {
            Intrinsics.m1830e(response, "response");
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

        public Entry(@NotNull Source rawSource) throws IOException {
            Intrinsics.m1830e(rawSource, "rawSource");
            try {
                BufferedSource d = Okio.m143d(rawSource);
                this.url = d.mo78a0();
                this.requestMethod = d.mo78a0();
                Headers.Builder builder = new Headers.Builder();
                int readInt$okhttp = Cache.Companion.readInt$okhttp(d);
                boolean z = false;
                for (int i = 0; i < readInt$okhttp; i++) {
                    builder.addLenient$okhttp(d.mo78a0());
                }
                this.varyHeaders = builder.build();
                StatusLine parse = StatusLine.Companion.parse(d.mo78a0());
                this.protocol = parse.protocol;
                this.code = parse.code;
                this.message = parse.message;
                Headers.Builder builder2 = new Headers.Builder();
                int readInt$okhttp2 = Cache.Companion.readInt$okhttp(d);
                for (int i2 = 0; i2 < readInt$okhttp2; i2++) {
                    builder2.addLenient$okhttp(d.mo78a0());
                }
                String str = builder2.get(SENT_MILLIS);
                String str2 = builder2.get(RECEIVED_MILLIS);
                builder2.removeAll(SENT_MILLIS);
                builder2.removeAll(RECEIVED_MILLIS);
                long j = 0;
                this.sentRequestMillis = str != null ? Long.parseLong(str) : 0L;
                this.receivedResponseMillis = str2 != null ? Long.parseLong(str2) : j;
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String a0 = d.mo78a0();
                    if (!(a0.length() > 0 ? true : z)) {
                        this.handshake = Handshake.Companion.get(!d.mo60z() ? TlsVersion.Companion.forJavaName(d.mo78a0()) : TlsVersion.SSL_3_0, CipherSuite.Companion.forJavaName(d.mo78a0()), readCertificateList(d), readCertificateList(d));
                    } else {
                        throw new IOException("expected \"\" but was \"" + a0 + '\"');
                    }
                } else {
                    this.handshake = null;
                }
            } finally {
                rawSource.close();
            }
        }

        private final boolean isHttps() {
            boolean C;
            C = StringsKt__StringsJVMKt.m1491C(this.url, "https://", false, 2, null);
            return C;
        }

        private final List<Certificate> readCertificateList(BufferedSource bufferedSource) throws IOException {
            List<Certificate> f;
            int readInt$okhttp = Cache.Companion.readInt$okhttp(bufferedSource);
            if (readInt$okhttp == -1) {
                f = CollectionsKt__CollectionsKt.m2175f();
                return f;
            }
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(readInt$okhttp);
                for (int i = 0; i < readInt$okhttp; i++) {
                    String a0 = bufferedSource.mo78a0();
                    Buffer buffer = new Buffer();
                    ByteString a = ByteString.f24137j.m166a(a0);
                    Intrinsics.m1832c(a);
                    buffer.m184z0(a);
                    arrayList.add(instance.generateCertificate(buffer.mo64s0()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        private final void writeCertList(BufferedSink bufferedSink, List<? extends Certificate> list) throws IOException {
            try {
                bufferedSink.mo90q0(list.size()).mo100A(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    byte[] bytes = ((Certificate) list.get(i)).getEncoded();
                    ByteString.Companion companion = ByteString.f24137j;
                    Intrinsics.m1831d(bytes, "bytes");
                    bufferedSink.mo98M(ByteString.Companion.m161f(companion, bytes, 0, 0, 3, null).mo43a()).mo100A(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public final boolean matches(@NotNull Request request, @NotNull Response response) {
            Intrinsics.m1830e(request, "request");
            Intrinsics.m1830e(response, "response");
            return Intrinsics.m1834a(this.url, request.url().toString()) && Intrinsics.m1834a(this.requestMethod, request.method()) && Cache.Companion.varyMatches(response, this.varyHeaders, request);
        }

        @NotNull
        public final Response response(@NotNull DiskLruCache.Snapshot snapshot) {
            Intrinsics.m1830e(snapshot, "snapshot");
            String str = this.responseHeaders.get(HttpHeaders.CONTENT_TYPE);
            String str2 = this.responseHeaders.get(HttpHeaders.CONTENT_LENGTH);
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(snapshot, str, str2)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
        }

        public final void writeTo(@NotNull DiskLruCache.Editor editor) throws IOException {
            Intrinsics.m1830e(editor, "editor");
            BufferedSink c = Okio.m144c(editor.newSink(0));
            try {
                c.mo98M(this.url).mo100A(10);
                c.mo98M(this.requestMethod).mo100A(10);
                c.mo90q0(this.varyHeaders.size()).mo100A(10);
                int size = this.varyHeaders.size();
                for (int i = 0; i < size; i++) {
                    c.mo98M(this.varyHeaders.name(i)).mo98M(": ").mo98M(this.varyHeaders.value(i)).mo100A(10);
                }
                c.mo98M(new StatusLine(this.protocol, this.code, this.message).toString()).mo100A(10);
                c.mo90q0(this.responseHeaders.size() + 2).mo100A(10);
                int size2 = this.responseHeaders.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    c.mo98M(this.responseHeaders.name(i2)).mo98M(": ").mo98M(this.responseHeaders.value(i2)).mo100A(10);
                }
                c.mo98M(SENT_MILLIS).mo98M(": ").mo90q0(this.sentRequestMillis).mo100A(10);
                c.mo98M(RECEIVED_MILLIS).mo98M(": ").mo90q0(this.receivedResponseMillis).mo100A(10);
                if (isHttps()) {
                    c.mo100A(10);
                    Handshake handshake = this.handshake;
                    Intrinsics.m1832c(handshake);
                    c.mo98M(handshake.cipherSuite().javaName()).mo100A(10);
                    writeCertList(c, this.handshake.peerCertificates());
                    writeCertList(c, this.handshake.localCertificates());
                    c.mo98M(this.handshake.tlsVersion().javaName()).mo100A(10);
                }
                Unit unit = Unit.f20447a;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018��2\u00020\u0001B\u0013\u0012\n\u0010\u0013\u001a\u00060\u0011R\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\bR\u0016\u0010\t\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\bR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0013\u001a\u00060\u0011R\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lokhttp3/Cache$RealCacheRequest;", "Lokhttp3/internal/cache/CacheRequest;", "", "abort", "()V", "Lokio/Sink;", "body", "()Lokio/Sink;", "Lokio/Sink;", "cacheOut", "", "done", "Z", "getDone", "()Z", "setDone", "(Z)V", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "<init>", "(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Cache$RealCacheRequest.class */
    private final class RealCacheRequest implements CacheRequest {
        private final Sink body;
        private final Sink cacheOut;
        private boolean done;
        private final DiskLruCache.Editor editor;
        final /* synthetic */ Cache this$0;

        public RealCacheRequest(@NotNull Cache cache, DiskLruCache.Editor editor) {
            Intrinsics.m1830e(editor, "editor");
            this.this$0 = cache;
            this.editor = editor;
            Sink newSink = editor.newSink(1);
            this.cacheOut = newSink;
            this.body = new ForwardingSink(newSink) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    synchronized (RealCacheRequest.this.this$0) {
                        if (!RealCacheRequest.this.getDone()) {
                            RealCacheRequest.this.setDone(true);
                            Cache cache2 = RealCacheRequest.this.this$0;
                            cache2.setWriteSuccessCount$okhttp(cache2.getWriteSuccessCount$okhttp() + 1);
                            super.close();
                            RealCacheRequest.this.editor.commit();
                        }
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() {
            synchronized (this.this$0) {
                if (!this.done) {
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
        }

        @Override // okhttp3.internal.cache.CacheRequest
        @NotNull
        public Sink body() {
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
    public Cache(@NotNull File directory, long j) {
        this(directory, j, FileSystem.SYSTEM);
        Intrinsics.m1830e(directory, "directory");
    }

    public Cache(@NotNull File directory, long j, @NotNull FileSystem fileSystem) {
        Intrinsics.m1830e(directory, "directory");
        Intrinsics.m1830e(fileSystem, "fileSystem");
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

    @JvmStatic
    @NotNull
    public static final String key(@NotNull HttpUrl httpUrl) {
        return Companion.key(httpUrl);
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_directory  reason: not valid java name */
    public final File m24595deprecated_directory() {
        return this.cache.getDirectory();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.cache.close();
    }

    public final void delete() throws IOException {
        this.cache.delete();
    }

    @JvmName
    @NotNull
    public final File directory() {
        return this.cache.getDirectory();
    }

    public final void evictAll() throws IOException {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.cache.flush();
    }

    @Nullable
    public final Response get$okhttp(@NotNull Request request) {
        Intrinsics.m1830e(request, "request");
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

    @NotNull
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

    @Nullable
    public final CacheRequest put$okhttp(@NotNull Response response) {
        DiskLruCache.Editor editor;
        Intrinsics.m1830e(response, "response");
        String method = response.request().method();
        if (HttpMethod.INSTANCE.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
                return null;
            } catch (IOException e) {
                return null;
            }
        } else if ((!Intrinsics.m1834a(method, "GET")) || Companion.hasVaryAll(response)) {
            return null;
        } else {
            Entry entry = new Entry(response);
            try {
                editor = DiskLruCache.edit$default(this.cache, Companion.key(response.request().url()), 0L, 2, null);
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

    public final void remove$okhttp(@NotNull Request request) throws IOException {
        Intrinsics.m1830e(request, "request");
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

    public final void trackResponse$okhttp(@NotNull CacheStrategy cacheStrategy) {
        synchronized (this) {
            Intrinsics.m1830e(cacheStrategy, "cacheStrategy");
            this.requestCount++;
            if (cacheStrategy.getNetworkRequest() != null) {
                this.networkCount++;
            } else if (cacheStrategy.getCacheResponse() != null) {
                this.hitCount++;
            }
        }
    }

    public final void update$okhttp(@NotNull Response cached, @NotNull Response network) {
        Intrinsics.m1830e(cached, "cached");
        Intrinsics.m1830e(network, "network");
        Entry entry = new Entry(network);
        ResponseBody body = cached.body();
        if (body != null) {
            DiskLruCache.Editor editor = null;
            try {
                DiskLruCache.Editor edit = ((CacheResponseBody) body).getSnapshot().edit();
                if (edit != null) {
                    entry.writeTo(edit);
                    editor = edit;
                    edit.commit();
                }
            } catch (IOException e) {
                abortQuietly(editor);
            }
        } else {
            throw new NullPointerException("null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        }
    }

    @NotNull
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
