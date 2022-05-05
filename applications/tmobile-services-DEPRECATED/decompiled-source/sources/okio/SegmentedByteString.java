package okio;

import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.SegmentedByteStringKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u0005\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0007\b��\u0018��2\u00020\u0001B\u001f\b��\u0012\f\u0010O\u001a\b\u0012\u0004\u0012\u00020\u001c0N\u0012\u0006\u0010J\u001a\u00020I¢\u0006\u0004\bS\u0010TJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\u0007J\u0017\u0010\f\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0005H\u0010¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\u0012H\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0007J\u001f\u0010\u001b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0001H\u0010¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010\"\u001a\u00020\u001cH\u0010¢\u0006\u0004\b \u0010!J\u0017\u0010'\u001a\u00020$2\u0006\u0010#\u001a\u00020\u0012H\u0010¢\u0006\u0004\b%\u0010&J\u001f\u0010(\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0012H\u0016¢\u0006\u0004\b(\u0010\u001fJ/\u0010,\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0012H\u0016¢\u0006\u0004\b,\u0010-J/\u0010,\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0012H\u0016¢\u0006\u0004\b,\u0010.J\u0017\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u001f\u00105\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u00122\u0006\u00104\u001a\u00020\u0012H\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0001H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u0001H\u0016¢\u0006\u0004\b9\u00108J\u000f\u0010:\u001a\u00020\u001cH\u0016¢\u0006\u0004\b:\u0010!J\u000f\u0010;\u001a\u00020\u0001H\u0002¢\u0006\u0004\b;\u00108J\u000f\u0010<\u001a\u00020\u0005H\u0016¢\u0006\u0004\b<\u0010\u0007J\u0017\u0010@\u001a\u00020?2\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\b@\u0010AJ'\u0010@\u001a\u00020?2\u0006\u0010C\u001a\u00020B2\u0006\u0010)\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0012H\u0010¢\u0006\u0004\bD\u0010EJ\u000f\u0010G\u001a\u00020FH\u0002¢\u0006\u0004\bG\u0010HR\u001c\u0010J\u001a\u00020I8��@��X\u0080\u0004¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR\"\u0010O\u001a\b\u0012\u0004\u0012\u00020\u001c0N8��@��X\u0080\u0004¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R¨\u0006U"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "Ljava/nio/ByteBuffer;", "asByteBuffer", "()Ljava/nio/ByteBuffer;", "", "base64", "()Ljava/lang/String;", "base64Url", "algorithm", "digest$okio", "(Ljava/lang/String;)Lokio/ByteString;", "digest", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "getSize$okio", "()I", "getSize", "hashCode", "hex", "key", "hmac$okio", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmac", "", "fromIndex", "indexOf", "([BI)I", "internalArray$okio", "()[B", "internalArray", "pos", "", "internalGet$okio", "(I)B", "internalGet", "lastIndexOf", "offset", "otherOffset", "byteCount", "rangeEquals", "(I[BII)Z", "(ILokio/ByteString;II)Z", "Ljava/nio/charset/Charset;", "charset", "string", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "beginIndex", "endIndex", "substring", "(II)Lokio/ByteString;", "toAsciiLowercase", "()Lokio/ByteString;", "toAsciiUppercase", "toByteArray", "toByteString", "toString", "Ljava/io/OutputStream;", "out", "", "write", "(Ljava/io/OutputStream;)V", "Lokio/Buffer;", "buffer", "write$okio", "(Lokio/Buffer;II)V", "Ljava/lang/Object;", "writeReplace", "()Ljava/lang/Object;", "", "directory", "[I", "getDirectory$okio", "()[I", "", "segments", "[[B", "getSegments$okio", "()[[B", "<init>", "([[B[I)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/SegmentedByteString.class */
public final class SegmentedByteString extends ByteString {
    @NotNull

    /* renamed from: k */
    private final transient byte[][] f24208k;
    @NotNull

    /* renamed from: l */
    private final transient int[] f24209l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedByteString(@NotNull byte[][] segments, @NotNull int[] directory) {
        super(ByteString.f24136i.m172i());
        Intrinsics.m1830e(segments, "segments");
        Intrinsics.m1830e(directory, "directory");
        this.f24208k = segments;
        this.f24209l = directory;
    }

    /* renamed from: K */
    private final ByteString m44K() {
        return new ByteString(m45J());
    }

    private final Object writeReplace() {
        ByteString K = m44K();
        if (K != null) {
            return K;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
    }

    @Override // okio.ByteString
    @NotNull
    /* renamed from: E */
    public ByteString mo49E() {
        return m44K().mo49E();
    }

    @Override // okio.ByteString
    /* renamed from: G */
    public void mo48G(@NotNull Buffer buffer, int i, int i2) {
        Intrinsics.m1830e(buffer, "buffer");
        int i3 = i2 + i;
        int b = SegmentedByteStringKt.m6b(this, i);
        while (i < i3) {
            int i4 = b == 0 ? 0 : m47H()[b - 1];
            int i5 = m47H()[b];
            int i6 = m47H()[m46I().length + b];
            int min = Math.min(i3, (i5 - i4) + i4) - i;
            int i7 = i6 + (i - i4);
            Segment segment = new Segment(m46I()[b], i7, i7 + min, true, false);
            Segment segment2 = buffer.f24125f;
            if (segment2 == null) {
                segment.f24202g = segment;
                segment.f24201f = segment;
                buffer.f24125f = segment;
            } else {
                Intrinsics.m1832c(segment2);
                Segment segment3 = segment2.f24202g;
                Intrinsics.m1832c(segment3);
                segment3.m57c(segment);
            }
            i += min;
            b++;
        }
        buffer.m189u0(buffer.m188v0() + m178C());
    }

    @NotNull
    /* renamed from: H */
    public final int[] m47H() {
        return this.f24209l;
    }

    @NotNull
    /* renamed from: I */
    public final byte[][] m46I() {
        return this.f24208k;
    }

    @NotNull
    /* renamed from: J */
    public byte[] m45J() {
        byte[] bArr = new byte[m178C()];
        int length = m46I().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = m47H()[length + i];
            int i5 = m47H()[i];
            int i6 = i5 - i2;
            ArraysKt___ArraysJvmKt.m2303c(m46I()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // okio.ByteString
    @NotNull
    /* renamed from: a */
    public String mo43a() {
        return m44K().mo43a();
    }

    @Override // okio.ByteString
    @NotNull
    /* renamed from: e */
    public ByteString mo42e(@NotNull String algorithm) {
        Intrinsics.m1830e(algorithm, "algorithm");
        MessageDigest instance = MessageDigest.getInstance(algorithm);
        int length = m46I().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = m47H()[length + i];
            int i4 = m47H()[i];
            instance.update(m46I()[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digest = instance.digest();
        Intrinsics.m1831d(digest, "digest.digest()");
        return new ByteString(digest);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        if (mo37w(0, r0, 0, m178C()) != false) goto L_0x0034;
     */
    @Override // okio.ByteString
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L_0x000a
            goto L_0x0034
        L_0x000a:
            r0 = r7
            boolean r0 = r0 instanceof okio.ByteString
            if (r0 == 0) goto L_0x0032
            r0 = r7
            okio.ByteString r0 = (okio.ByteString) r0
            r7 = r0
            r0 = r7
            int r0 = r0.m178C()
            r1 = r6
            int r1 = r1.m178C()
            if (r0 != r1) goto L_0x0032
            r0 = r6
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.m178C()
            boolean r0 = r0.mo37w(r1, r2, r3, r4)
            if (r0 == 0) goto L_0x0032
            goto L_0x0034
        L_0x0032:
            r0 = 0
            r8 = r0
        L_0x0034:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.SegmentedByteString.equals(java.lang.Object):boolean");
    }

    @Override // okio.ByteString
    public int hashCode() {
        int k = m171k();
        if (k == 0) {
            int length = m46I().length;
            int i = 0;
            k = 1;
            int i2 = 0;
            while (i < length) {
                int i3 = m47H()[length + i];
                int i4 = m47H()[i];
                byte[] bArr = m46I()[i];
                for (int i5 = i3; i5 < (i4 - i2) + i3; i5++) {
                    k = (k * 31) + bArr[i5];
                }
                i++;
                i2 = i4;
            }
            m168y(k);
        }
        return k;
    }

    @Override // okio.ByteString
    /* renamed from: l */
    public int mo41l() {
        return m47H()[m46I().length - 1];
    }

    @Override // okio.ByteString
    @NotNull
    /* renamed from: o */
    public String mo40o() {
        return m44K().mo40o();
    }

    @Override // okio.ByteString
    @NotNull
    /* renamed from: p */
    public byte[] mo39p() {
        return m45J();
    }

    @Override // okio.ByteString
    /* renamed from: q */
    public byte mo38q(int i) {
        _Util.m23b(m47H()[m46I().length - 1], i, 1L);
        int b = SegmentedByteStringKt.m6b(this, i);
        return m46I()[b][(i - (b == 0 ? 0 : m47H()[b - 1])) + m47H()[m46I().length + b]];
    }

    @Override // okio.ByteString
    @NotNull
    public String toString() {
        return m44K().toString();
    }

    @Override // okio.ByteString
    /* renamed from: w */
    public boolean mo37w(int i, @NotNull ByteString other, int i2, int i3) {
        Intrinsics.m1830e(other, "other");
        boolean z = false;
        if (i >= 0) {
            if (i <= m178C() - i3) {
                int i4 = i3 + i;
                int b = SegmentedByteStringKt.m6b(this, i);
                int i5 = i;
                while (true) {
                    if (i5 >= i4) {
                        z = true;
                        break;
                    }
                    int i6 = b == 0 ? 0 : m47H()[b - 1];
                    int i7 = m47H()[b];
                    int i8 = m47H()[m46I().length + b];
                    int min = Math.min(i4, (i7 - i6) + i6) - i5;
                    if (!other.mo36x(i2, m46I()[b], i8 + (i5 - i6), min)) {
                        z = false;
                        break;
                    }
                    i2 += min;
                    i5 += min;
                    b++;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // okio.ByteString
    /* renamed from: x */
    public boolean mo36x(int i, @NotNull byte[] other, int i2, int i3) {
        Intrinsics.m1830e(other, "other");
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= m178C() - i3) {
                z = false;
                if (i2 >= 0) {
                    if (i2 <= other.length - i3) {
                        int i4 = i3 + i;
                        int b = SegmentedByteStringKt.m6b(this, i);
                        int i5 = i2;
                        while (true) {
                            if (i >= i4) {
                                z = true;
                                break;
                            }
                            int i6 = b == 0 ? 0 : m47H()[b - 1];
                            int i7 = m47H()[b];
                            int i8 = m47H()[m46I().length + b];
                            int min = Math.min(i4, (i7 - i6) + i6) - i;
                            if (!_Util.m24a(m46I()[b], i8 + (i - i6), other, i5, min)) {
                                z = false;
                                break;
                            }
                            i5 += min;
                            i += min;
                            b++;
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return z;
    }
}
