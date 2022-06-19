package okhttp3;

import com.appsflyer.internal.referrer.Payload;
import com.mopub.common.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18405d;
import kotlin.p533io.C18442b;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import p092c.AbstractC3207h;
import p092c.C3202f;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018�� !2\u00020\u0001:\u0002 !B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J@\u0010\u0010\u001a\u0002H\u0011\"\b\b��\u0010\u0011*\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002H\u00110\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00170\u0014H\u0082\b¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH&J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&J\b\u0010\u001d\u001a\u00020\u0015H&J\u0006\u0010\u001e\u001a\u00020\u001fR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\""}, m4298d2 = {"Lokhttp3/ResponseBody;", "Ljava/io/Closeable;", "()V", "reader", "Ljava/io/Reader;", "byteStream", "Ljava/io/InputStream;", "byteString", "Lokio/ByteString;", "bytes", "", "charStream", "charset", "Ljava/nio/charset/Charset;", EventConstants.CLOSE, "", "consumeSource", "T", "", "consumer", "Lkotlin/Function1;", "Lokio/BufferedSource;", "sizeMapper", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "contentLength", "", "contentType", "Lokhttp3/MediaType;", Payload.SOURCE, "string", "", "BomAwareReader", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/ResponseBody.class */
public abstract class ResponseBody implements Closeable {
    public static final Companion Companion = new Companion(null);
    private Reader reader;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0019\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH\u0016J \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lokhttp3/ResponseBody$BomAwareReader;", "Ljava/io/Reader;", Payload.SOURCE, "Lokio/BufferedSource;", "charset", "Ljava/nio/charset/Charset;", "(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V", "closed", "", "delegate", EventConstants.CLOSE, "", "read", "", "cbuf", "", "off", "len", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/ResponseBody$BomAwareReader.class */
    public static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final AbstractC3207h source;

        public BomAwareReader(AbstractC3207h source, Charset charset) {
            C18524p.m3840d(source, "source");
            C18524p.m3840d(charset, "charset");
            this.source = source;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
            } else {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public final int read(char[] cbuf, int i, int i2) throws IOException {
            C18524p.m3840d(cbuf, "cbuf");
            if (!this.closed) {
                Reader reader = this.delegate;
                InputStreamReader inputStreamReader = reader;
                if (reader == null) {
                    inputStreamReader = new InputStreamReader(this.source.mo39116g(), Util.readBomAsCharset(this.source, this.charset));
                    this.delegate = inputStreamReader;
                }
                return inputStreamReader.read(cbuf, i, i2);
            }
            throw new IOException("Stream closed");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000bH\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\fH\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\rH\u0007J'\u0010\u000e\u001a\u00020\u0004*\u00020\u000b2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\b2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\f2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\r2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003¨\u0006\u0010"}, m4298d2 = {"Lokhttp3/ResponseBody$Companion;", "", "()V", "create", "Lokhttp3/ResponseBody;", "contentType", "Lokhttp3/MediaType;", Constants.VAST_TRACKER_CONTENT, "", "contentLength", "", "Lokio/BufferedSource;", "", "Lokio/ByteString;", "asResponseBody", "toResponseBody", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/ResponseBody$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [okhttp3.ResponseBody$Companion] */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v3 */
        public static /* synthetic */ ResponseBody create$default(Companion companion, AbstractC3207h abstractC3207h, MediaType mediaType, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            ?? r9 = j;
            if ((i & 2) != 0) {
                r9 = -1;
            }
            return companion.create(abstractC3207h, mediaType, r9);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, C3208i c3208i, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(c3208i, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bArr, mediaType);
        }

        public final ResponseBody create(final AbstractC3207h asResponseBody, final MediaType mediaType, final long j) {
            C18524p.m3840d(asResponseBody, "$this$asResponseBody");
            return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // okhttp3.ResponseBody
                public final long contentLength() {
                    return j;
                }

                @Override // okhttp3.ResponseBody
                public final MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.ResponseBody
                public final AbstractC3207h source() {
                    return AbstractC3207h.this;
                }
            };
        }

        public final ResponseBody create(C3208i toResponseBody, MediaType mediaType) {
            C18524p.m3840d(toResponseBody, "$this$toResponseBody");
            return create(new C3202f().mo39144b(toResponseBody), mediaType, toResponseBody.mo39173f());
        }

        public final ResponseBody create(String string, MediaType mediaType) {
            C18524p.m3840d(string, "$this$toResponseBody");
            Charset charset = C18405d.f63516a;
            MediaType mediaType2 = mediaType;
            if (mediaType != null) {
                Charset charset$default = MediaType.charset$default(mediaType, null, 1, null);
                charset = charset$default;
                mediaType2 = mediaType;
                if (charset$default == null) {
                    charset = C18405d.f63516a;
                    MediaType.Companion companion = MediaType.Companion;
                    mediaType2 = companion.parse(mediaType + "; charset=utf-8");
                }
            }
            C3202f c3202f = new C3202f();
            C18524p.m3840d(string, "string");
            Charset charset2 = charset;
            C18524p.m3840d(charset2, "charset");
            C3202f m39212a = c3202f.m39212a(string, 0, string.length(), charset);
            return create(m39212a, mediaType2, m39212a.f11572b);
        }

        public final ResponseBody create(MediaType mediaType, long j, AbstractC3207h content) {
            C18524p.m3840d(content, "content");
            return create(content, mediaType, j);
        }

        public final ResponseBody create(MediaType mediaType, C3208i content) {
            C18524p.m3840d(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, String content) {
            C18524p.m3840d(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, byte[] content) {
            C18524p.m3840d(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(byte[] toResponseBody, MediaType mediaType) {
            C18524p.m3840d(toResponseBody, "$this$toResponseBody");
            return create(new C3202f().mo39140c(toResponseBody), mediaType, toResponseBody.length);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.nio.charset.Charset charset() {
        /*
            r3 = this;
            r0 = r3
            okhttp3.MediaType r0 = r0.contentType()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            r0 = r4
            java.nio.charset.Charset r1 = kotlin.p532h.C18405d.f63516a
            java.nio.charset.Charset r0 = r0.charset(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            if (r0 != 0) goto L1b
        L17:
            java.nio.charset.Charset r0 = kotlin.p532h.C18405d.f63516a
            r4 = r0
        L1b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.charset():java.nio.charset.Charset");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Object] */
    private final <T> T consumeSource(Function1<? super AbstractC3207h, ? extends T> function1, Function1<? super T, Integer> function12) {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            AbstractC3207h source = source();
            try {
                T invoke = function1.invoke(source);
                C18442b.m3909a(source, null);
                int intValue = function12.invoke(invoke).intValue();
                if (contentLength == -1 || contentLength == intValue) {
                    return invoke;
                }
                throw new IOException("Content-Length (" + contentLength + ") and stream length (" + intValue + ") disagree");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        throw new IOException("Cannot buffer entire body for content length: ".concat(String.valueOf(contentLength)));
    }

    public static final ResponseBody create(AbstractC3207h abstractC3207h, MediaType mediaType, long j) {
        return Companion.create(abstractC3207h, mediaType, j);
    }

    public static final ResponseBody create(C3208i c3208i, MediaType mediaType) {
        return Companion.create(c3208i, mediaType);
    }

    public static final ResponseBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final ResponseBody create(MediaType mediaType, long j, AbstractC3207h abstractC3207h) {
        return Companion.create(mediaType, j, abstractC3207h);
    }

    public static final ResponseBody create(MediaType mediaType, C3208i c3208i) {
        return Companion.create(mediaType, c3208i);
    }

    public static final ResponseBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    public final InputStream byteStream() {
        return source().mo39116g();
    }

    /* JADX WARN: Finally extract failed */
    public final C3208i byteString() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            AbstractC3207h source = source();
            try {
                C3208i mo39107q = source.mo39107q();
                C18442b.m3909a(source, null);
                int mo39173f = mo39107q.mo39173f();
                if (contentLength == -1 || contentLength == mo39173f) {
                    return mo39107q;
                }
                throw new IOException("Content-Length (" + contentLength + ") and stream length (" + mo39173f + ") disagree");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        throw new IOException("Cannot buffer entire body for content length: ".concat(String.valueOf(contentLength)));
    }

    /* JADX WARN: Finally extract failed */
    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            AbstractC3207h source = source();
            try {
                byte[] mo39105t = source.mo39105t();
                C18442b.m3909a(source, null);
                int length = mo39105t.length;
                if (contentLength == -1 || contentLength == length) {
                    return mo39105t;
                }
                throw new IOException("Content-Length (" + contentLength + ") and stream length (" + length + ") disagree");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        throw new IOException("Cannot buffer entire body for content length: ".concat(String.valueOf(contentLength)));
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        BomAwareReader bomAwareReader = reader;
        if (reader == null) {
            bomAwareReader = new BomAwareReader(source(), charset());
            this.reader = bomAwareReader;
        }
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract AbstractC3207h source();

    public final String string() throws IOException {
        AbstractC3207h source;
        try {
            AbstractC3207h source2 = source();
            th = null;
            return source2.mo39126a(Util.readBomAsCharset(source2, charset()));
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
