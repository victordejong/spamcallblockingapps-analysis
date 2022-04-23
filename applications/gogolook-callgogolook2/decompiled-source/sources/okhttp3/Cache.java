package okhttp3;

import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.cache.InternalCache;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.p659io.FileSystem;
import okhttp3.internal.platform.Platform;
import p645m.AbstractC15173d;
import p645m.AbstractC15174e;
import p645m.AbstractC15176g;
import p645m.AbstractC15177h;
import p645m.AbstractC15192r;
import p645m.AbstractC15193s;
import p645m.C15170c;
import p645m.C15175f;
import p645m.C15181l;
/* loaded from: classes3-dex2jar.jar:okhttp3/Cache.class */
public final class Cache implements Closeable, Flushable {
    public final DiskLruCache cache;
    public int hitCount;
    public final InternalCache internalCache;
    public int networkCount;
    public int requestCount;
    public int writeAbortCount;
    public int writeSuccessCount;

    /* loaded from: classes3-dex2jar.jar:okhttp3/Cache$CacheRequestImpl.class */
    public final class CacheRequestImpl implements CacheRequest {
        public AbstractC15192r body;
        public AbstractC15192r cacheOut;
        public boolean done;
        public final DiskLruCache.Editor editor;

        public CacheRequestImpl(DiskLruCache.Editor editor) {
            this.editor = editor;
            this.cacheOut = editor.newSink(1);
            this.body = new AbstractC15176g(this.cacheOut, Cache.this, editor) { // from class: okhttp3.Cache.CacheRequestImpl.1
                public final /* synthetic */ DiskLruCache.Editor val$editor;

                {
                    this.val$editor = editor;
                }

                @Override // p645m.AbstractC15176g, p645m.AbstractC15192r, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    synchronized (Cache.this) {
                        if (!CacheRequestImpl.this.done) {
                            CacheRequestImpl.this.done = true;
                            Cache.this.writeSuccessCount++;
                            super.close();
                            this.val$editor.commit();
                        }
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() {
            synchronized (Cache.this) {
                if (!this.done) {
                    this.done = true;
                    Cache.this.writeAbortCount++;
                    Util.closeQuietly(this.cacheOut);
                    try {
                        this.editor.abort();
                    } catch (IOException e) {
                    }
                }
            }
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public AbstractC15192r body() {
            return this.body;
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/Cache$CacheResponseBody.class */
    public static class CacheResponseBody extends ResponseBody {
        public final AbstractC15174e bodySource;
        @Nullable
        public final String contentLength;
        @Nullable
        public final String contentType;
        public final DiskLruCache.Snapshot snapshot;

        public CacheResponseBody(final DiskLruCache.Snapshot snapshot, String str, String str2) {
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = C15181l.m318a(new AbstractC15177h(this, snapshot.getSource(1)) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // p645m.AbstractC15177h, p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    snapshot.close();
                    super.close();
                }
            });
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2, types: [long] */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // okhttp3.ResponseBody
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long contentLength() {
            /*
                r3 = this;
                r0 = -1
                r4 = r0
                r0 = r4
                r6 = r0
                r0 = r3
                java.lang.String r0 = r0.contentLength     // Catch: NumberFormatException -> 0x0017
                if (r0 == 0) goto L_0x0015
                r0 = r3
                java.lang.String r0 = r0.contentLength     // Catch: NumberFormatException -> 0x0017
                long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0017
                r6 = r0
            L_0x0015:
                r0 = r6
                return r0
            L_0x0017:
                r8 = move-exception
                r0 = r4
                r6 = r0
                goto L_0x0015
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cache.CacheResponseBody.contentLength():long");
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            String str = this.contentType;
            return str != null ? MediaType.parse(str) : null;
        }

        @Override // okhttp3.ResponseBody
        public AbstractC15174e source() {
            return this.bodySource;
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/Cache$Entry.class */
    public static final class Entry {
        public final int code;
        @Nullable
        public final Handshake handshake;
        public final String message;
        public final Protocol protocol;
        public final long receivedResponseMillis;
        public final String requestMethod;
        public final Headers responseHeaders;
        public final long sentRequestMillis;
        public final String url;
        public final Headers varyHeaders;
        public static final String SENT_MILLIS = Platform.get().getPrefix() + "-Sent-Millis";
        public static final String RECEIVED_MILLIS = Platform.get().getPrefix() + "-Received-Millis";

        public Entry(AbstractC15193s sVar) throws IOException {
            try {
                AbstractC15174e a = C15181l.m318a(sVar);
                this.url = a.mo295s();
                this.requestMethod = a.mo295s();
                Headers.Builder builder = new Headers.Builder();
                int readInt = Cache.readInt(a);
                for (int i = 0; i < readInt; i++) {
                    builder.addLenient(a.mo295s());
                }
                this.varyHeaders = builder.build();
                StatusLine parse = StatusLine.parse(a.mo295s());
                this.protocol = parse.protocol;
                this.code = parse.code;
                this.message = parse.message;
                Headers.Builder builder2 = new Headers.Builder();
                int readInt2 = Cache.readInt(a);
                for (int i2 = 0; i2 < readInt2; i2++) {
                    builder2.addLenient(a.mo295s());
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
                    String s = a.mo295s();
                    if (s.length() <= 0) {
                        this.handshake = Handshake.get(!a.mo292v() ? TlsVersion.forJavaName(a.mo295s()) : TlsVersion.SSL_3_0, CipherSuite.forJavaName(a.mo295s()), readCertificateList(a), readCertificateList(a));
                    } else {
                        throw new IOException("expected \"\" but was \"" + s + "\"");
                    }
                } else {
                    this.handshake = null;
                }
            } finally {
                sVar.close();
            }
        }

        public Entry(Response response) {
            this.url = response.request().url().toString();
            this.varyHeaders = HttpHeaders.varyHeaders(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
            this.sentRequestMillis = response.sentRequestAtMillis();
            this.receivedResponseMillis = response.receivedResponseAtMillis();
        }

        public final boolean isHttps() {
            return this.url.startsWith("https://");
        }

        public boolean matches(Request request, Response response) {
            return this.url.equals(request.url().toString()) && this.requestMethod.equals(request.method()) && HttpHeaders.varyMatches(response, this.varyHeaders, request);
        }

        public final List<Certificate> readCertificateList(AbstractC15174e eVar) throws IOException {
            int readInt = Cache.readInt(eVar);
            if (readInt == -1) {
                return Collections.emptyList();
            }
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(readInt);
                for (int i = 0; i < readInt; i++) {
                    String s = eVar.mo295s();
                    C15170c cVar = new C15170c();
                    cVar.mo312a(C15175f.m339b(s));
                    arrayList.add(instance.generateCertificate(cVar.mo307A()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        public Response response(DiskLruCache.Snapshot snapshot) {
            String str = this.responseHeaders.get("Content-Type");
            String str2 = this.responseHeaders.get("Content-Length");
            Request.Builder builder = new Request.Builder();
            builder.url(this.url);
            builder.method(this.requestMethod, null);
            builder.headers(this.varyHeaders);
            Request build = builder.build();
            Response.Builder builder2 = new Response.Builder();
            builder2.request(build);
            builder2.protocol(this.protocol);
            builder2.code(this.code);
            builder2.message(this.message);
            builder2.headers(this.responseHeaders);
            builder2.body(new CacheResponseBody(snapshot, str, str2));
            builder2.handshake(this.handshake);
            builder2.sentRequestAtMillis(this.sentRequestMillis);
            builder2.receivedResponseAtMillis(this.receivedResponseMillis);
            return builder2.build();
        }

        public final void writeCertList(AbstractC15173d dVar, List<Certificate> list) throws IOException {
            try {
                dVar.mo313a(list.size()).writeByte(10);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    dVar.mo309e(C15175f.m340a(list.get(i).getEncoded()).mo279a()).writeByte(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public void writeTo(DiskLruCache.Editor editor) throws IOException {
            AbstractC15173d a = C15181l.m319a(editor.newSink(0));
            a.mo309e(this.url).writeByte(10);
            a.mo309e(this.requestMethod).writeByte(10);
            a.mo313a(this.varyHeaders.size()).writeByte(10);
            int size = this.varyHeaders.size();
            for (int i = 0; i < size; i++) {
                a.mo309e(this.varyHeaders.name(i)).mo309e(": ").mo309e(this.varyHeaders.value(i)).writeByte(10);
            }
            a.mo309e(new StatusLine(this.protocol, this.code, this.message).toString()).writeByte(10);
            a.mo313a(this.responseHeaders.size() + 2).writeByte(10);
            int size2 = this.responseHeaders.size();
            for (int i2 = 0; i2 < size2; i2++) {
                a.mo309e(this.responseHeaders.name(i2)).mo309e(": ").mo309e(this.responseHeaders.value(i2)).writeByte(10);
            }
            a.mo309e(SENT_MILLIS).mo309e(": ").mo313a(this.sentRequestMillis).writeByte(10);
            a.mo309e(RECEIVED_MILLIS).mo309e(": ").mo313a(this.receivedResponseMillis).writeByte(10);
            if (isHttps()) {
                a.writeByte(10);
                a.mo309e(this.handshake.cipherSuite().javaName()).writeByte(10);
                writeCertList(a, this.handshake.peerCertificates());
                writeCertList(a, this.handshake.localCertificates());
                a.mo309e(this.handshake.tlsVersion().javaName()).writeByte(10);
            }
            a.close();
        }
    }

    public Cache(File file, long j) {
        this(file, j, FileSystem.SYSTEM);
    }

    public Cache(File file, long j, FileSystem fileSystem) {
        this.internalCache = new InternalCache() { // from class: okhttp3.Cache.1
            @Override // okhttp3.internal.cache.InternalCache
            public Response get(Request request) throws IOException {
                return Cache.this.get(request);
            }

            @Override // okhttp3.internal.cache.InternalCache
            public CacheRequest put(Response response) throws IOException {
                return Cache.this.put(response);
            }

            @Override // okhttp3.internal.cache.InternalCache
            public void remove(Request request) throws IOException {
                Cache.this.remove(request);
            }

            @Override // okhttp3.internal.cache.InternalCache
            public void trackConditionalCacheHit() {
                Cache.this.trackConditionalCacheHit();
            }

            @Override // okhttp3.internal.cache.InternalCache
            public void trackResponse(CacheStrategy cacheStrategy) {
                Cache.this.trackResponse(cacheStrategy);
            }

            @Override // okhttp3.internal.cache.InternalCache
            public void update(Response response, Response response2) {
                Cache.this.update(response, response2);
            }
        };
        this.cache = DiskLruCache.create(fileSystem, file, 201105, 2, j);
    }

    public static String key(HttpUrl httpUrl) {
        return C15175f.m336d(httpUrl.toString()).mo271c().mo273b();
    }

    public static int readInt(AbstractC15174e eVar) throws IOException {
        try {
            long w = eVar.mo291w();
            String s = eVar.mo295s();
            if (w >= 0 && w <= 2147483647L && s.isEmpty()) {
                return (int) w;
            }
            throw new IOException("expected an int but was \"" + w + s + "\"");
        } catch (NumberFormatException e) {
            throw new IOException(e.getMessage());
        }
    }

    public final void abortQuietly(@Nullable DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException e) {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.cache.close();
    }

    public void evictAll() throws IOException {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.cache.flush();
    }

    @Nullable
    public Response get(Request request) {
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(key(request.url()));
            if (snapshot == null) {
                return null;
            }
            try {
                Entry entry = new Entry(snapshot.getSource(0));
                Response response = entry.response(snapshot);
                if (entry.matches(request, response)) {
                    return response;
                }
                Util.closeQuietly(response.body());
                return null;
            } catch (IOException e) {
                Util.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException e2) {
            return null;
        }
    }

    @Nullable
    public CacheRequest put(Response response) {
        DiskLruCache.Editor editor;
        String method = response.request().method();
        if (HttpMethod.invalidatesCache(response.request().method())) {
            try {
                remove(response.request());
                return null;
            } catch (IOException e) {
                return null;
            }
        } else if (!method.equals("GET") || HttpHeaders.hasVaryAll(response)) {
            return null;
        } else {
            Entry entry = new Entry(response);
            try {
                editor = this.cache.edit(key(response.request().url()));
                if (editor == null) {
                    return null;
                }
                try {
                    entry.writeTo(editor);
                    return new CacheRequestImpl(editor);
                } catch (IOException e2) {
                    abortQuietly(editor);
                    return null;
                }
            } catch (IOException e3) {
                editor = null;
            }
        }
    }

    public void remove(Request request) throws IOException {
        this.cache.remove(key(request.url()));
    }

    public void trackConditionalCacheHit() {
        synchronized (this) {
            this.hitCount++;
        }
    }

    public void trackResponse(CacheStrategy cacheStrategy) {
        synchronized (this) {
            this.requestCount++;
            if (cacheStrategy.networkRequest != null) {
                this.networkCount++;
            } else if (cacheStrategy.cacheResponse != null) {
                this.hitCount++;
            }
        }
    }

    public void update(Response response, Response response2) {
        DiskLruCache.Editor editor;
        Entry entry = new Entry(response2);
        try {
            editor = ((CacheResponseBody) response.body()).snapshot.edit();
            if (editor != null) {
                try {
                    entry.writeTo(editor);
                    editor.commit();
                } catch (IOException e) {
                    abortQuietly(editor);
                }
            }
        } catch (IOException e2) {
            editor = null;
        }
    }
}
