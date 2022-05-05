package okhttp3;

import com.google.android.gms.common.api.Api;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p009io.CloseableKt;
import kotlin.text.Charsets;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\b&\u0018�� +2\u00020\u0001:\u0002,+B\u0007¢\u0006\u0004\b*\u0010\u0013J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013JB\u0010\u001b\u001a\u00028��\"\b\b��\u0010\u0015*\u00020\u00142\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00028��0\u00162\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00190\u0016H\u0082\b¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH&¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010!\u001a\u0004\u0018\u00010 H&¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0017H&¢\u0006\u0004\b#\u0010$J\r\u0010&\u001a\u00020%¢\u0006\u0004\b&\u0010'R\u0018\u0010(\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lokhttp3/ResponseBody;", "Ljava/io/Closeable;", "Ljava/io/InputStream;", "byteStream", "()Ljava/io/InputStream;", "Lokio/ByteString;", "byteString", "()Lokio/ByteString;", "", "bytes", "()[B", "Ljava/io/Reader;", "charStream", "()Ljava/io/Reader;", "Ljava/nio/charset/Charset;", "charset", "()Ljava/nio/charset/Charset;", "", "close", "()V", "", "T", "Lkotlin/Function1;", "Lokio/BufferedSource;", "consumer", "", "sizeMapper", "consumeSource", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "", "contentLength", "()J", "Lokhttp3/MediaType;", "contentType", "()Lokhttp3/MediaType;", "source", "()Lokio/BufferedSource;", "", "string", "()Ljava/lang/String;", "reader", "Ljava/io/Reader;", "<init>", "Companion", "BomAwareReader", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/ResponseBody.class */
public abstract class ResponseBody implements Closeable {
    public static final Companion Companion = new Companion(null);
    private Reader reader;

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0019\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lokhttp3/ResponseBody$BomAwareReader;", "Ljava/io/Reader;", "", "close", "()V", "", "cbuf", "", "off", "len", "read", "([CII)I", "Ljava/nio/charset/Charset;", "charset", "Ljava/nio/charset/Charset;", "", "closed", "Z", "delegate", "Ljava/io/Reader;", "Lokio/BufferedSource;", "source", "Lokio/BufferedSource;", "<init>", "(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/ResponseBody$BomAwareReader.class */
    public static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final BufferedSource source;

        public BomAwareReader(@NotNull BufferedSource source, @NotNull Charset charset) {
            Intrinsics.m1830e(source, "source");
            Intrinsics.m1830e(charset, "charset");
            this.source = source;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
            } else {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(@NotNull char[] cbuf, int i, int i2) throws IOException {
            Intrinsics.m1830e(cbuf, "cbuf");
            if (!this.closed) {
                Reader reader = this.delegate;
                if (reader == null) {
                    reader = new InputStreamReader(this.source.mo64s0(), Util.readBomAsCharset(this.source, this.charset));
                    this.delegate = reader;
                }
                return reader.read(cbuf, i, i2);
            }
            throw new IOException("Stream closed");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0006\u001a\u00020\u00052\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J)\u0010\u0006\u001a\u00020\u00052\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0006\u0010\u000bJ!\u0010\u0006\u001a\u00020\u00052\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0006\u0010\rJ!\u0010\u0006\u001a\u00020\u00052\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0006\u0010\u000fJ)\u0010\u0011\u001a\u00020\u0005*\u00020\n2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0006\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u00032\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\f2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0014J\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u000e2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0015¨\u0006\u0018"}, d2 = {"Lokhttp3/ResponseBody$Companion;", "Lokhttp3/MediaType;", "contentType", "", FirebaseAnalytics.Param.CONTENT, "Lokhttp3/ResponseBody;", "create", "(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;", "", "contentLength", "Lokio/BufferedSource;", "(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;", "", "(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;", "Lokio/ByteString;", "(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/ResponseBody;", "(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;", "asResponseBody", "([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;", "toResponseBody", "(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;", "(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/ResponseBody$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, BufferedSource bufferedSource, MediaType mediaType, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            if ((i & 2) != 0) {
                j = -1;
            }
            return companion.create(bufferedSource, mediaType, j);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(byteString, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bArr, mediaType);
        }

        @JvmStatic
        @JvmName
        @NotNull
        public final ResponseBody create(@NotNull String toResponseBody, @Nullable MediaType mediaType) {
            Intrinsics.m1830e(toResponseBody, "$this$toResponseBody");
            Charset charset = Charsets.f21018a;
            MediaType mediaType2 = mediaType;
            if (mediaType != null) {
                Charset charset$default = MediaType.charset$default(mediaType, null, 1, null);
                charset = charset$default;
                mediaType2 = mediaType;
                if (charset$default == null) {
                    charset = Charsets.f21018a;
                    MediaType.Companion companion = MediaType.Companion;
                    mediaType2 = companion.parse(mediaType + "; charset=utf-8");
                }
            }
            Buffer buffer = new Buffer();
            buffer.m211L0(toResponseBody, charset);
            return create(buffer, mediaType2, buffer.m188v0());
        }

        @Deprecated
        @JvmStatic
        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, long j, @NotNull BufferedSource content) {
            Intrinsics.m1830e(content, "content");
            return create(content, mediaType, j);
        }

        @Deprecated
        @JvmStatic
        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull String content) {
            Intrinsics.m1830e(content, "content");
            return create(content, mediaType);
        }

        @Deprecated
        @JvmStatic
        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull ByteString content) {
            Intrinsics.m1830e(content, "content");
            return create(content, mediaType);
        }

        @Deprecated
        @JvmStatic
        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull byte[] content) {
            Intrinsics.m1830e(content, "content");
            return create(content, mediaType);
        }

        @JvmStatic
        @JvmName
        @NotNull
        public final ResponseBody create(@NotNull final BufferedSource asResponseBody, @Nullable final MediaType mediaType, final long j) {
            Intrinsics.m1830e(asResponseBody, "$this$asResponseBody");
            return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j;
                }

                @Override // okhttp3.ResponseBody
                @Nullable
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.ResponseBody
                @NotNull
                public BufferedSource source() {
                    return BufferedSource.this;
                }
            };
        }

        @JvmStatic
        @JvmName
        @NotNull
        public final ResponseBody create(@NotNull ByteString toResponseBody, @Nullable MediaType mediaType) {
            Intrinsics.m1830e(toResponseBody, "$this$toResponseBody");
            Buffer buffer = new Buffer();
            buffer.m184z0(toResponseBody);
            return create(buffer, mediaType, toResponseBody.m178C());
        }

        @JvmStatic
        @JvmName
        @NotNull
        public final ResponseBody create(@NotNull byte[] toResponseBody, @Nullable MediaType mediaType) {
            Intrinsics.m1830e(toResponseBody, "$this$toResponseBody");
            Buffer buffer = new Buffer();
            buffer.m224B0(toResponseBody);
            return create(buffer, mediaType, toResponseBody.length);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r4 != null) goto L_0x001c;
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
            if (r0 == 0) goto L_0x0018
            r0 = r4
            java.nio.charset.Charset r1 = kotlin.text.Charsets.f21018a
            java.nio.charset.Charset r0 = r0.charset(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0018
            goto L_0x001c
        L_0x0018:
            java.nio.charset.Charset r0 = kotlin.text.Charsets.f21018a
            r4 = r0
        L_0x001c:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.charset():java.nio.charset.Charset");
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final <T> T consumeSource(kotlin.jvm.functions.Function1<? super okio.BufferedSource, ? extends T> r6, kotlin.jvm.functions.Function1<? super T, java.lang.Integer> r7) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.contentLength()
            r8 = r0
            r0 = r8
            r1 = 2147483647(0x7fffffff, float:NaN)
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0098
            r0 = r5
            okio.BufferedSource r0 = r0.source()
            r10 = r0
            r0 = r6
            r1 = r10
            java.lang.Object r0 = r0.invoke(r1)     // Catch: all -> 0x0084
            r6 = r0
            r0 = 1
            kotlin.jvm.internal.InlineMarker.m1836b(r0)
            r0 = r10
            r1 = 0
            kotlin.p009io.CloseableKt.m1887a(r0, r1)
            r0 = 1
            kotlin.jvm.internal.InlineMarker.m1837a(r0)
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.invoke(r1)
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            r11 = r0
            r0 = r8
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0082
            r0 = r8
            r1 = r11
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004c
            goto L_0x0082
        L_0x004c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Content-Length ("
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ") and stream length ("
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ") disagree"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0082:
            r0 = r6
            return r0
        L_0x0084:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch: all -> 0x0087
        L_0x0087:
            r7 = move-exception
            r0 = 1
            kotlin.jvm.internal.InlineMarker.m1836b(r0)
            r0 = r10
            r1 = r6
            kotlin.p009io.CloseableKt.m1887a(r0, r1)
            r0 = 1
            kotlin.jvm.internal.InlineMarker.m1837a(r0)
            r0 = r7
            throw r0
        L_0x0098:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Cannot buffer entire body for content length: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.consumeSource(kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1):java.lang.Object");
    }

    @JvmStatic
    @JvmName
    @NotNull
    public static final ResponseBody create(@NotNull String str, @Nullable MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    @Deprecated
    @JvmStatic
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, long j, @NotNull BufferedSource bufferedSource) {
        return Companion.create(mediaType, j, bufferedSource);
    }

    @Deprecated
    @JvmStatic
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull String str) {
        return Companion.create(mediaType, str);
    }

    @Deprecated
    @JvmStatic
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    @Deprecated
    @JvmStatic
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    @JvmStatic
    @JvmName
    @NotNull
    public static final ResponseBody create(@NotNull BufferedSource bufferedSource, @Nullable MediaType mediaType, long j) {
        return Companion.create(bufferedSource, mediaType, j);
    }

    @JvmStatic
    @JvmName
    @NotNull
    public static final ResponseBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    @JvmStatic
    @JvmName
    @NotNull
    public static final ResponseBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    @NotNull
    public final InputStream byteStream() {
        return source().mo64s0();
    }

    /* JADX WARN: Finally extract failed */
    @NotNull
    public final ByteString byteString() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
            BufferedSource source = source();
            try {
                ByteString U = source.mo80U();
                CloseableKt.m1887a(source, null);
                int C = U.m178C();
                if (contentLength == -1 || contentLength == C) {
                    return U;
                }
                throw new IOException("Content-Length (" + contentLength + ") and stream length (" + C + ") disagree");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
    }

    /* JADX WARN: Finally extract failed */
    @NotNull
    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= ((long) Api.BaseClientBuilder.API_PRIORITY_OTHER)) {
            BufferedSource source = source();
            try {
                byte[] w = source.mo62w();
                CloseableKt.m1887a(source, null);
                int length = w.length;
                if (contentLength == -1 || contentLength == length) {
                    return w;
                }
                throw new IOException("Content-Length (" + contentLength + ") and stream length (" + length + ") disagree");
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
    }

    @NotNull
    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader == null) {
            reader = new BomAwareReader(source(), charset());
            this.reader = reader;
        }
        return reader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract MediaType contentType();

    @NotNull
    public abstract BufferedSource source();

    @NotNull
    public final String string() throws IOException {
        BufferedSource source = source();
        try {
            th = null;
            return source.mo81P(Util.readBomAsCharset(source, charset()));
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
