package okio;

import com.google.android.gms.common.api.Api;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import okio.internal.BufferKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010j\u001a\u00020i¢\u0006\u0004\bl\u0010mJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u0011J'\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u0013J\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u000e\u0010\u0016J\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0019\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\nJ\u000f\u0010\u001e\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b!\u0010\"J/\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#H\u0016¢\u0006\u0004\b!\u0010&J\u0017\u0010)\u001a\u00020#2\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010)\u001a\u00020#2\u0006\u0010(\u001a\u00020+H\u0016¢\u0006\u0004\b)\u0010,J'\u0010)\u001a\u00020#2\u0006\u0010(\u001a\u00020+2\u0006\u0010 \u001a\u00020#2\u0006\u0010%\u001a\u00020#H\u0016¢\u0006\u0004\b)\u0010-J\u001f\u0010)\u001a\u00020\r2\u0006\u0010(\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\b)\u0010.J\u0017\u00100\u001a\u00020\r2\u0006\u0010(\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u000bH\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020+H\u0016¢\u0006\u0004\b4\u00105J\u0017\u00104\u001a\u00020+2\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\b4\u00106J\u000f\u00107\u001a\u00020\u0014H\u0016¢\u0006\u0004\b7\u00108J\u0017\u00107\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\b7\u00109J\u000f\u0010:\u001a\u00020\rH\u0016¢\u0006\u0004\b:\u0010;J\u0017\u0010<\u001a\u00020\u00052\u0006\u0010(\u001a\u00020+H\u0016¢\u0006\u0004\b<\u0010=J\u001f\u0010<\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\b<\u0010>J\u000f\u0010?\u001a\u00020\rH\u0016¢\u0006\u0004\b?\u0010;J\u000f\u0010@\u001a\u00020#H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020#H\u0016¢\u0006\u0004\bB\u0010AJ\u000f\u0010C\u001a\u00020\rH\u0016¢\u0006\u0004\bC\u0010;J\u000f\u0010D\u001a\u00020\rH\u0016¢\u0006\u0004\bD\u0010;J\u000f\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020EH\u0016¢\u0006\u0004\bH\u0010GJ\u0017\u0010L\u001a\u00020K2\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bL\u0010MJ\u001f\u0010L\u001a\u00020K2\u0006\u0010%\u001a\u00020\r2\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bL\u0010NJ\u000f\u0010O\u001a\u00020KH\u0016¢\u0006\u0004\bO\u0010PJ\u0017\u0010O\u001a\u00020K2\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\bO\u0010QJ\u000f\u0010R\u001a\u00020#H\u0016¢\u0006\u0004\bR\u0010AJ\u0011\u0010S\u001a\u0004\u0018\u00010KH\u0016¢\u0006\u0004\bS\u0010PJ\u000f\u0010T\u001a\u00020KH\u0016¢\u0006\u0004\bT\u0010PJ\u0017\u0010T\u001a\u00020K2\u0006\u0010U\u001a\u00020\rH\u0016¢\u0006\u0004\bT\u0010QJ\u0017\u0010V\u001a\u00020\b2\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\bV\u0010WJ\u0017\u0010X\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\bX\u0010YJ\u0017\u0010\\\u001a\u00020#2\u0006\u0010[\u001a\u00020ZH\u0016¢\u0006\u0004\b\\\u0010]J\u0017\u0010^\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\b^\u0010YJ\u000f\u0010`\u001a\u00020_H\u0016¢\u0006\u0004\b`\u0010aJ\u000f\u0010b\u001a\u00020KH\u0016¢\u0006\u0004\bb\u0010PR\u001d\u0010\u0003\u001a\u00020\u00028Ö\u0002@\u0016X\u0096\u0004¢\u0006\f\u0012\u0004\bd\u0010\u0007\u001a\u0004\bc\u0010\u0004R\u0016\u0010e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\be\u0010fR\u0016\u0010g\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010j\u001a\u00020i8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bj\u0010k¨\u0006n"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "Lokio/Buffer;", "buffer", "()Lokio/Buffer;", "", "close", "()V", "", "exhausted", "()Z", "", "b", "", "indexOf", "(B)J", "fromIndex", "(BJ)J", "toIndex", "(BJJ)J", "Lokio/ByteString;", "bytes", "(Lokio/ByteString;)J", "(Lokio/ByteString;J)J", "targetBytes", "indexOfElement", "Ljava/io/InputStream;", "inputStream", "()Ljava/io/InputStream;", "isOpen", "peek", "()Lokio/BufferedSource;", "offset", "rangeEquals", "(JLokio/ByteString;)Z", "", "bytesOffset", "byteCount", "(JLokio/ByteString;II)Z", "Ljava/nio/ByteBuffer;", "sink", "read", "(Ljava/nio/ByteBuffer;)I", "", "([B)I", "([BII)I", "(Lokio/Buffer;J)J", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", "readByte", "()B", "readByteArray", "()[B", "(J)[B", "readByteString", "()Lokio/ByteString;", "(J)Lokio/ByteString;", "readDecimalLong", "()J", "readFully", "([B)V", "(Lokio/Buffer;J)V", "readHexadecimalUnsignedLong", "readInt", "()I", "readIntLe", "readLong", "readLongLe", "", "readShort", "()S", "readShortLe", "Ljava/nio/charset/Charset;", "charset", "", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "readUtf8", "()Ljava/lang/String;", "(J)Ljava/lang/String;", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "(J)Z", "require", "(J)V", "Lokio/Options;", "options", "select", "(Lokio/Options;)I", "skip", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "toString", "getBuffer", "getBuffer$annotations", "bufferField", "Lokio/Buffer;", "closed", "Z", "Lokio/Source;", "source", "Lokio/Source;", "<init>", "(Lokio/Source;)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/RealBufferedSource.class */
public final class RealBufferedSource implements BufferedSource {
    @JvmField
    @NotNull

    /* renamed from: f */
    public final Buffer f24192f = new Buffer();
    @JvmField

    /* renamed from: g */
    public boolean f24193g;
    @JvmField
    @NotNull

    /* renamed from: h */
    public final Source f24194h;

    public RealBufferedSource(@NotNull Source source) {
        Intrinsics.m1830e(source, "source");
        this.f24194h = source;
    }

    @Override // okio.BufferedSource
    /* renamed from: D */
    public void mo86D(@NotNull Buffer sink, long j) {
        Intrinsics.m1830e(sink, "sink");
        try {
            mo66p0(j);
            this.f24192f.mo86D(sink, j);
        } catch (EOFException e) {
            sink.mo95S(this.f24192f);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    /* renamed from: E */
    public long mo85E(@NotNull ByteString targetBytes) {
        Intrinsics.m1830e(targetBytes, "targetBytes");
        return m73e(targetBytes, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // okio.BufferedSource
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo84G() {
        /*
            r5 = this;
            r0 = r5
            r1 = 1
            r0.mo66p0(r1)
            r0 = 0
            r6 = r0
        L_0x0007:
            r0 = r6
            r1 = 1
            long r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = r8
            boolean r0 = r0.request(r1)
            if (r0 == 0) goto L_0x0091
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            r1 = r6
            byte r0 = r0.m192p(r1)
            r10 = r0
            r0 = r10
            r1 = 48
            byte r1 = (byte) r1
            if (r0 < r1) goto L_0x002d
            r0 = r10
            r1 = 57
            byte r1 = (byte) r1
            if (r0 <= r1) goto L_0x0042
        L_0x002d:
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0047
            r0 = r10
            r1 = 45
            byte r1 = (byte) r1
            if (r0 == r1) goto L_0x0042
            goto L_0x0047
        L_0x0042:
            r0 = r8
            r6 = r0
            goto L_0x0007
        L_0x0047:
            r0 = r11
            if (r0 == 0) goto L_0x004f
            goto L_0x0091
        L_0x004f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "Expected leading [0-9] or '-' character but was 0x"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = 16
            int r0 = kotlin.text.CharsKt.m1576a(r0)
            r0 = 16
            int r0 = kotlin.text.CharsKt.m1576a(r0)
            r0 = r10
            r1 = 16
            java.lang.String r0 = java.lang.Integer.toString(r0, r1)
            r13 = r0
            r0 = r13
            java.lang.String r1 = "java.lang.Integer.toStri…(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r12
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r1 = r0
            r2 = r12
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0091:
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            long r0 = r0.mo84G()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.mo84G():long");
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: H */
    public String mo83H(long j) {
        String str;
        if (j >= 0) {
            long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
            byte b = (byte) 10;
            long b2 = m77b(b, 0L, j2);
            if (b2 != -1) {
                str = BufferKt.m16c(this.f24192f, b2);
            } else if (j2 >= Long.MAX_VALUE || !request(j2) || this.f24192f.m192p(j2 - 1) != ((byte) 13) || !request(1 + j2) || this.f24192f.m192p(j2) != b) {
                Buffer buffer = new Buffer();
                Buffer buffer2 = this.f24192f;
                buffer2.m196l(buffer, 0L, Math.min(32, buffer2.m188v0()));
                throw new EOFException("\\n not found: limit=" + Math.min(this.f24192f.m188v0(), j) + " content=" + buffer.mo80U().mo40o() + "…");
            } else {
                str = BufferKt.m16c(this.f24192f, j2);
            }
            return str;
        }
        throw new IllegalArgumentException(("limit < 0: " + j).toString());
    }

    @Override // okio.BufferedSource
    /* renamed from: O */
    public boolean mo82O(long j, @NotNull ByteString bytes) {
        Intrinsics.m1830e(bytes, "bytes");
        return m72h(j, bytes, 0, bytes.m178C());
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: P */
    public String mo81P(@NotNull Charset charset) {
        Intrinsics.m1830e(charset, "charset");
        this.f24192f.mo95S(this.f24194h);
        return this.f24192f.mo81P(charset);
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: U */
    public ByteString mo80U() {
        this.f24192f.mo95S(this.f24194h);
        return this.f24192f.mo80U();
    }

    /* renamed from: a */
    public long m79a(byte b) {
        return m77b(b, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: a0 */
    public String mo78a0() {
        return mo83H(Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* renamed from: b */
    public long m77b(byte b, long j, long j2) {
        long j3;
        boolean z = true;
        if (!this.f24193g) {
            if (0 > j || j2 < j) {
                z = false;
            }
            if (z) {
                while (true) {
                    j3 = -1;
                    if (j >= j2) {
                        break;
                    }
                    j3 = this.f24192f.m191q(b, j, j2);
                    if (j3 != -1) {
                        break;
                    }
                    long v0 = this.f24192f.m188v0();
                    j3 = -1;
                    if (v0 >= j2) {
                        break;
                    } else if (this.f24194h.read(this.f24192f, 8192) == -1) {
                        j3 = -1;
                        break;
                    } else {
                        j = Math.max(j, v0);
                    }
                }
                return j3;
            }
            throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    /* renamed from: c */
    public Buffer mo76c() {
        return this.f24192f;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: c0 */
    public byte[] mo75c0(long j) {
        mo66p0(j);
        return this.f24192f.mo75c0(j);
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f24193g) {
            this.f24193g = true;
            this.f24194h.close();
            this.f24192f.m203a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m74d(@org.jetbrains.annotations.NotNull okio.ByteString r8, long r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "bytes"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r7
            boolean r0 = r0.f24193g
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0063
        L_0x0010:
            r0 = r7
            okio.Buffer r0 = r0.f24192f
            r1 = r8
            r2 = r9
            long r0 = r0.m190t(r1, r2)
            r11 = r0
            r0 = r11
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002a
            r0 = r11
            r9 = r0
            goto L_0x004f
        L_0x002a:
            r0 = r7
            okio.Buffer r0 = r0.f24192f
            long r0 = r0.m188v0()
            r11 = r0
            r0 = r7
            okio.Source r0 = r0.f24194h
            r1 = r7
            okio.Buffer r1 = r1.f24192f
            r2 = 8192(0x2000, float:1.14794E-41)
            long r2 = (long) r2
            long r0 = r0.read(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0051
            r0 = -1
            r9 = r0
        L_0x004f:
            r0 = r9
            return r0
        L_0x0051:
            r0 = r9
            r1 = r11
            r2 = r8
            int r2 = r2.m178C()
            long r2 = (long) r2
            long r1 = r1 - r2
            r2 = 1
            long r1 = r1 + r2
            long r0 = java.lang.Math.max(r0, r1)
            r9 = r0
            goto L_0x0010
        L_0x0063:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "closed"
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.m74d(okio.ByteString, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m73e(@org.jetbrains.annotations.NotNull okio.ByteString r6, long r7) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "targetBytes"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r5
            boolean r0 = r0.f24193g
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x005a
        L_0x000f:
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            r1 = r6
            r2 = r7
            long r0 = r0.m216J(r1, r2)
            r9 = r0
            r0 = r9
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0029
            r0 = r9
            r7 = r0
            goto L_0x004e
        L_0x0029:
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            long r0 = r0.m188v0()
            r9 = r0
            r0 = r5
            okio.Source r0 = r0.f24194h
            r1 = r5
            okio.Buffer r1 = r1.f24192f
            r2 = 8192(0x2000, float:1.14794E-41)
            long r2 = (long) r2
            long r0 = r0.read(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0050
            r0 = -1
            r7 = r0
        L_0x004e:
            r0 = r7
            return r0
        L_0x0050:
            r0 = r7
            r1 = r9
            long r0 = java.lang.Math.max(r0, r1)
            r7 = r0
            goto L_0x000f
        L_0x005a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "closed"
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.m73e(okio.ByteString, long):long");
    }

    /* renamed from: h */
    public boolean m72h(long j, @NotNull ByteString bytes, int i, int i2) {
        Intrinsics.m1830e(bytes, "bytes");
        boolean z = true;
        if (!this.f24193g) {
            if (j >= 0 && i >= 0 && i2 >= 0 && bytes.m178C() - i >= i2) {
                for (int i3 = 0; i3 < i2; i3++) {
                    long j2 = i3 + j;
                    if (request(1 + j2) && this.f24192f.m192p(j2) == bytes.m173h(i + i3)) {
                    }
                }
                return z;
            }
            z = false;
            return z;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* renamed from: i */
    public int m71i() {
        mo66p0(4L);
        return this.f24192f.m205X();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f24193g;
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: j */
    public Buffer mo70j() {
        return this.f24192f;
    }

    /* renamed from: k */
    public short m69k() {
        mo66p0(2L);
        return this.f24192f.m204Z();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // okio.BufferedSource
    /* renamed from: l0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo68l0(@org.jetbrains.annotations.NotNull okio.Sink r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "sink"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = 0
            r7 = r0
        L_0x0008:
            r0 = r5
            okio.Source r0 = r0.f24194h
            r1 = r5
            okio.Buffer r1 = r1.f24192f
            r2 = 8192(0x2000, float:1.14794E-41)
            long r2 = (long) r2
            long r0 = r0.read(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0044
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            long r0 = r0.m200d()
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0008
            r0 = r7
            r1 = r9
            long r0 = r0 + r1
            r7 = r0
            r0 = r6
            r1 = r5
            okio.Buffer r1 = r1.f24192f
            r2 = r9
            r0.write(r1, r2)
            goto L_0x0008
        L_0x0044:
            r0 = r7
            r9 = r0
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            long r0 = r0.m188v0()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0071
            r0 = r7
            r1 = r5
            okio.Buffer r1 = r1.f24192f
            long r1 = r1.m188v0()
            long r0 = r0 + r1
            r9 = r0
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            r11 = r0
            r0 = r6
            r1 = r11
            r2 = r11
            long r2 = r2.m188v0()
            r0.write(r1, r2)
        L_0x0071:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.mo68l0(okio.Sink):long");
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: n */
    public ByteString mo67n(long j) {
        mo66p0(j);
        return this.f24192f.mo67n(j);
    }

    @Override // okio.BufferedSource
    /* renamed from: p0 */
    public void mo66p0(long j) {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.m143d(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    /* renamed from: r0 */
    public long mo65r0() {
        byte p;
        mo66p0(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            p = this.f24192f.m192p(i);
            if ((p < ((byte) 48) || p > ((byte) 57)) && ((p < ((byte) 97) || p > ((byte) 102)) && (p < ((byte) 65) || p > ((byte) 70)))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            CharsKt__CharJVMKt.m1575a(16);
            CharsKt__CharJVMKt.m1575a(16);
            String num = Integer.toString(p, 16);
            Intrinsics.m1831d(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.f24192f.mo65r0();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) {
        Intrinsics.m1830e(sink, "sink");
        if (this.f24192f.m188v0() == 0 && this.f24194h.read(this.f24192f, 8192) == -1) {
            return -1;
        }
        return this.f24192f.read(sink);
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j) {
        Intrinsics.m1830e(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (true ^ this.f24193g) {
            long j2 = -1;
            if (this.f24192f.m188v0() != 0 || this.f24194h.read(this.f24192f, 8192) != -1) {
                j2 = this.f24192f.read(sink, Math.min(j, this.f24192f.m188v0()));
            }
            return j2;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        mo66p0(1L);
        return this.f24192f.readByte();
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) {
        Intrinsics.m1830e(sink, "sink");
        try {
            mo66p0(sink.length);
            this.f24192f.readFully(sink);
        } catch (EOFException e) {
            int i = 0;
            while (this.f24192f.m188v0() > 0) {
                Buffer buffer = this.f24192f;
                int read = buffer.read(sink, i, (int) buffer.m188v0());
                if (read != -1) {
                    i += read;
                } else {
                    throw new AssertionError();
                }
            }
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public int readInt() {
        mo66p0(4L);
        return this.f24192f.readInt();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        mo66p0(8L);
        return this.f24192f.readLong();
    }

    @Override // okio.BufferedSource
    public short readShort() {
        mo66p0(2L);
        return this.f24192f.readShort();
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        boolean z = false;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (!this.f24193g) {
            while (true) {
                if (this.f24192f.m188v0() < j) {
                    if (this.f24194h.read(this.f24192f, 8192) == -1) {
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: s0 */
    public InputStream mo64s0() {
        return new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.f24193g) {
                    return (int) Math.min(realBufferedSource.f24192f.m188v0(), (long) Api.BaseClientBuilder.API_PRIORITY_OTHER);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.f24193g) {
                    if (realBufferedSource.f24192f.m188v0() == 0) {
                        RealBufferedSource realBufferedSource2 = RealBufferedSource.this;
                        if (realBufferedSource2.f24194h.read(realBufferedSource2.f24192f, 8192) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.f24192f.readByte() & 255;
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] data, int i, int i2) {
                Intrinsics.m1830e(data, "data");
                if (!RealBufferedSource.this.f24193g) {
                    _Util.m23b(data.length, i, i2);
                    if (RealBufferedSource.this.f24192f.m188v0() == 0) {
                        RealBufferedSource realBufferedSource = RealBufferedSource.this;
                        if (realBufferedSource.f24194h.read(realBufferedSource.f24192f, 8192) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.f24192f.read(data, i, i2);
                }
                throw new IOException("closed");
            }

            @NotNull
            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }
        };
    }

    @Override // okio.BufferedSource
    public void skip(long j) {
        if (!this.f24193g) {
            while (j > 0) {
                if (this.f24192f.m188v0() == 0 && this.f24194h.read(this.f24192f, 8192) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.f24192f.m188v0());
                this.f24192f.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
        r7 = -1;
     */
    @Override // okio.BufferedSource
    /* renamed from: t0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo63t0(@org.jetbrains.annotations.NotNull okio.Options r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "options"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r5
            boolean r0 = r0.f24193g
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x005d
        L_0x0010:
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            r1 = r6
            r2 = 1
            int r0 = okio.internal.BufferKt.m15d(r0, r1, r2)
            r7 = r0
            r0 = r7
            r1 = -2
            if (r0 == r1) goto L_0x0040
            r0 = r7
            r1 = -1
            if (r0 == r1) goto L_0x003b
            r0 = r6
            okio.ByteString[] r0 = r0.m118g()
            r1 = r7
            r0 = r0[r1]
            int r0 = r0.m178C()
            r8 = r0
            r0 = r5
            okio.Buffer r0 = r0.f24192f
            r1 = r8
            long r1 = (long) r1
            r0.skip(r1)
            goto L_0x005b
        L_0x003b:
            r0 = -1
            r7 = r0
            goto L_0x005b
        L_0x0040:
            r0 = r5
            okio.Source r0 = r0.f24194h
            r1 = r5
            okio.Buffer r1 = r1.f24192f
            r2 = 8192(0x2000, float:1.14794E-41)
            long r2 = (long) r2
            long r0 = r0.read(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0010
            goto L_0x003b
        L_0x005b:
            r0 = r7
            return r0
        L_0x005d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "closed"
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.mo63t0(okio.Options):int");
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f24194h.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.f24194h + ')';
    }

    @Override // okio.BufferedSource
    @NotNull
    /* renamed from: w */
    public byte[] mo62w() {
        this.f24192f.mo95S(this.f24194h);
        return this.f24192f.mo62w();
    }

    @Override // okio.BufferedSource
    /* renamed from: y */
    public long mo61y(@NotNull ByteString bytes) {
        Intrinsics.m1830e(bytes, "bytes");
        return m74d(bytes, 0L);
    }

    @Override // okio.BufferedSource
    /* renamed from: z */
    public boolean mo60z() {
        boolean z = true;
        if (!this.f24193g) {
            if (!this.f24192f.mo60z() || this.f24194h.read(this.f24192f, 8192) != -1) {
                z = false;
            }
            return z;
        }
        throw new IllegalStateException("closed".toString());
    }
}
