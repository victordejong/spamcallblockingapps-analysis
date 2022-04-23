package okhttp3;

import c.f;
import c.h;
import c.i;
import com.appsflyer.internal.referrer.Payload;
import com.mopub.common.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.h.d;
import kotlin.io.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.MediaType;
import okhttp3.internal.Util;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018�� !2\u00020\u0001:\u0002 !B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J@\u0010\u0010\u001a\u0002H\u0011\"\b\b��\u0010\u0011*\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002H\u00110\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00170\u0014H\u0082\b¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH&J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&J\b\u0010\u001d\u001a\u00020\u0015H&J\u0006\u0010\u001e\u001a\u00020\u001fR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\""}, d2 = {"Lokhttp3/ResponseBody;", "Ljava/io/Closeable;", "()V", "reader", "Ljava/io/Reader;", "byteStream", "Ljava/io/InputStream;", "byteString", "Lokio/ByteString;", "bytes", "", "charStream", "charset", "Ljava/nio/charset/Charset;", EventConstants.CLOSE, "", "consumeSource", "T", "", "consumer", "Lkotlin/Function1;", "Lokio/BufferedSource;", "sizeMapper", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "contentLength", "", "contentType", "Lokhttp3/MediaType;", Payload.SOURCE, "string", "", "BomAwareReader", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/ResponseBody.class */
public abstract class ResponseBody implements Closeable {
    public static final Companion Companion = new Companion(null);
    private Reader reader;

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0019\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH\u0016J \u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lokhttp3/ResponseBody$BomAwareReader;", "Ljava/io/Reader;", Payload.SOURCE, "Lokio/BufferedSource;", "charset", "Ljava/nio/charset/Charset;", "(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V", "closed", "", "delegate", EventConstants.CLOSE, "", "read", "", "cbuf", "", "off", "len", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/ResponseBody$BomAwareReader.class */
    public static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final h source;

        public BomAwareReader(h source, Charset charset) {
            p.d(source, "source");
            p.d(charset, "charset");
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
            p.d(cbuf, "cbuf");
            if (!this.closed) {
                Reader reader = this.delegate;
                InputStreamReader inputStreamReader = reader;
                if (reader == null) {
                    inputStreamReader = new InputStreamReader(this.source.g(), Util.readBomAsCharset(this.source, this.charset));
                    this.delegate = inputStreamReader;
                }
                return inputStreamReader.read(cbuf, i, i2);
            }
            throw new IOException("Stream closed");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u000bH\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\fH\u0007J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\rH\u0007J'\u0010\u000e\u001a\u00020\u0004*\u00020\u000b2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\b2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\f2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003J\u001d\u0010\u000f\u001a\u00020\u0004*\u00020\r2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\b\u0003¨\u0006\u0010"}, d2 = {"Lokhttp3/ResponseBody$Companion;", "", "()V", "create", "Lokhttp3/ResponseBody;", "contentType", "Lokhttp3/MediaType;", Constants.VAST_TRACKER_CONTENT, "", "contentLength", "", "Lokio/BufferedSource;", "", "Lokio/ByteString;", "asResponseBody", "toResponseBody", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/ResponseBody$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, h hVar, MediaType mediaType, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            if ((i & 2) != 0) {
                j = -1;
            }
            return companion.create(hVar, mediaType, j);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, i iVar, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(iVar, mediaType);
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

        public final ResponseBody create(final h asResponseBody, final MediaType mediaType, final long j) {
            p.d(asResponseBody, "$this$asResponseBody");
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
                public final h source() {
                    return h.this;
                }
            };
        }

        public final ResponseBody create(i toResponseBody, MediaType mediaType) {
            p.d(toResponseBody, "$this$toResponseBody");
            return create(new f().b(toResponseBody), mediaType, toResponseBody.f());
        }

        public final ResponseBody create(String string, MediaType mediaType) {
            p.d(string, "$this$toResponseBody");
            Charset charset = d.f36719a;
            MediaType mediaType2 = mediaType;
            if (mediaType != null) {
                Charset charset$default = MediaType.charset$default(mediaType, null, 1, null);
                charset = charset$default;
                mediaType2 = mediaType;
                if (charset$default == null) {
                    charset = d.f36719a;
                    MediaType.Companion companion = MediaType.Companion;
                    mediaType2 = companion.parse(mediaType + "; charset=utf-8");
                }
            }
            f fVar = new f();
            p.d(string, "string");
            p.d(charset, "charset");
            f a2 = fVar.a(string, 0, string.length(), charset);
            return create(a2, mediaType2, a2.f6289b);
        }

        public final ResponseBody create(MediaType mediaType, long j, h content) {
            p.d(content, "content");
            return create(content, mediaType, j);
        }

        public final ResponseBody create(MediaType mediaType, i content) {
            p.d(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, String content) {
            p.d(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, byte[] content) {
            p.d(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(byte[] toResponseBody, MediaType mediaType) {
            p.d(toResponseBody, "$this$toResponseBody");
            return create(new f().c(toResponseBody), mediaType, toResponseBody.length);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 == null) goto L_0x0017;
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
            if (r0 == 0) goto L_0x0017
            r0 = r4
            java.nio.charset.Charset r1 = kotlin.h.d.f36719a
            java.nio.charset.Charset r0 = r0.charset(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            if (r0 != 0) goto L_0x001b
        L_0x0017:
            java.nio.charset.Charset r0 = kotlin.h.d.f36719a
            r4 = r0
        L_0x001b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.charset():java.nio.charset.Charset");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final <T> T consumeSource(kotlin.jvm.functions.Function1<? super c.h, ? extends T> r7, kotlin.jvm.functions.Function1<? super T, java.lang.Integer> r8) {
        /*
            r6 = this;
            r0 = r6
            long r0 = r0.contentLength()
            r9 = r0
            r0 = r9
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0089
            r0 = r6
            c.h r0 = r0.source()
            java.io.Closeable r0 = (java.io.Closeable) r0
            r11 = r0
            r0 = r7
            r1 = r11
            java.lang.Object r0 = r0.invoke(r1)     // Catch: all -> 0x007d
            r7 = r0
            r0 = r11
            r1 = 0
            kotlin.io.b.a(r0, r1)
            r0 = r8
            r1 = r7
            java.lang.Object r0 = r0.invoke(r1)
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            r12 = r0
            r0 = r9
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x007b
            r0 = r9
            r1 = r12
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0047
            goto L_0x007b
        L_0x0047:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Content-Length ("
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = ") and stream length ("
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = ") disagree"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L_0x007b:
            r0 = r7
            return r0
        L_0x007d:
            r8 = move-exception
            r0 = r8
            throw r0     // Catch: all -> 0x0080
        L_0x0080:
            r7 = move-exception
            r0 = r11
            r1 = r8
            kotlin.io.b.a(r0, r1)
            r0 = r7
            throw r0
        L_0x0089:
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            java.lang.String r2 = "Cannot buffer entire body for content length: "
            r3 = r9
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.consumeSource(kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    public static final ResponseBody create(h hVar, MediaType mediaType, long j) {
        return Companion.create(hVar, mediaType, j);
    }

    public static final ResponseBody create(i iVar, MediaType mediaType) {
        return Companion.create(iVar, mediaType);
    }

    public static final ResponseBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final ResponseBody create(MediaType mediaType, long j, h hVar) {
        return Companion.create(mediaType, j, hVar);
    }

    public static final ResponseBody create(MediaType mediaType, i iVar) {
        return Companion.create(mediaType, iVar);
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
        return source().g();
    }

    /* JADX WARN: Finally extract failed */
    public final i byteString() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            h source = source();
            try {
                i q = source.q();
                b.a(source, null);
                int f = q.f();
                if (contentLength == -1 || contentLength == f) {
                    return q;
                }
                throw new IOException("Content-Length (" + contentLength + ") and stream length (" + f + ") disagree");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: ".concat(String.valueOf(contentLength)));
        }
    }

    /* JADX WARN: Finally extract failed */
    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            h source = source();
            try {
                byte[] t = source.t();
                b.a(source, null);
                int length = t.length;
                if (contentLength == -1 || contentLength == length) {
                    return t;
                }
                throw new IOException("Content-Length (" + contentLength + ") and stream length (" + length + ") disagree");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: ".concat(String.valueOf(contentLength)));
        }
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

    public abstract h source();

    public final String string() throws IOException {
        h source;
        try {
            h source2 = source();
            th = null;
            return source2.a(Util.readBomAsCharset(source2, charset()));
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
