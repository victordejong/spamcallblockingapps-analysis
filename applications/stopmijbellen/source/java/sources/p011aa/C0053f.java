package p011aa;

import android.support.p012v4.media.C0082b;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;
import p007a6.C0033h;
/* renamed from: aa.f */
/* loaded from: classes2-dex2jar.jar:aa/f.class */
public final class C0053f implements AbstractC0055h, AbstractC0054g, Cloneable, ByteChannel {

    /* renamed from: c */
    public static final byte[] f118c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable

    /* renamed from: a */
    public C0070u f119a;

    /* renamed from: b */
    public long f120b;

    /* renamed from: A */
    public void m8863A(byte[] bArr) throws EOFException {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < bArr.length) {
                int m8842p = m8842p(bArr, i2, bArr.length - i2);
                if (m8842p == -1) {
                    throw new EOFException();
                }
                i = i2 + m8842p;
            } else {
                return;
            }
        }
    }

    /* renamed from: B */
    public String m8862B(long j, Charset charset) throws EOFException {
        C0047a0.m8868b(this.f120b, 0L, j);
        if (charset != null) {
            if (j > 2147483647L) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
            } else if (j == 0) {
                return "";
            } else {
                C0070u c0070u = this.f119a;
                int i = c0070u.f152b;
                if (i + j > c0070u.f153c) {
                    return new String(mo8797x(j), charset);
                }
                String str = new String(c0070u.f151a, i, (int) j, charset);
                int i2 = (int) (c0070u.f152b + j);
                c0070u.f152b = i2;
                this.f120b -= j;
                if (i2 == c0070u.f153c) {
                    this.f119a = c0070u.m8796a();
                    C0071v.m8792a(c0070u);
                }
                return str;
            }
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: C */
    public short mo8813C() {
        short readShort = readShort();
        Charset charset = C0047a0.f107a;
        int i = readShort & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    /* renamed from: D */
    public String m8861D() {
        try {
            return m8862B(this.f120b, C0047a0.f107a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // p011aa.AbstractC0073x
    /* renamed from: E */
    public void mo613E(C0053f c0053f, long j) {
        C0070u c0070u;
        if (c0053f != null) {
            if (c0053f == this) {
                throw new IllegalArgumentException("source == this");
            }
            C0047a0.m8868b(c0053f.f120b, 0L, j);
            ?? r9 = j;
            while (r9 > 0) {
                C0070u c0070u2 = c0053f.f119a;
                if (r9 < c0070u2.f153c - c0070u2.f152b) {
                    C0070u c0070u3 = this.f119a;
                    C0070u c0070u4 = c0070u3 != null ? c0070u3.f157g : null;
                    if (c0070u4 != null && c0070u4.f155e) {
                        if ((c0070u4.f153c + r9) - (c0070u4.f154d ? 0 : c0070u4.f152b) <= 8192) {
                            c0070u2.m8793d(c0070u4, (int) r9);
                            c0053f.f120b -= r9;
                            this.f120b += r9;
                            return;
                        }
                    }
                    int i = (int) r9;
                    Objects.requireNonNull(c0070u2);
                    if (i <= 0 || i > c0070u2.f153c - c0070u2.f152b) {
                        throw new IllegalArgumentException();
                    }
                    if (i >= 1024) {
                        c0070u = c0070u2.m8794c();
                    } else {
                        c0070u = C0071v.m8791b();
                        System.arraycopy(c0070u2.f151a, c0070u2.f152b, c0070u.f151a, 0, i);
                    }
                    c0070u.f153c = c0070u.f152b + i;
                    c0070u2.f152b += i;
                    c0070u2.f157g.m8795b(c0070u);
                    c0053f.f119a = c0070u;
                }
                C0070u c0070u5 = c0053f.f119a;
                long j2 = c0070u5.f153c - c0070u5.f152b;
                c0053f.f119a = c0070u5.m8796a();
                C0070u c0070u6 = this.f119a;
                if (c0070u6 == null) {
                    this.f119a = c0070u5;
                    c0070u5.f157g = c0070u5;
                    c0070u5.f156f = c0070u5;
                } else {
                    c0070u6.f157g.m8795b(c0070u5);
                    C0070u c0070u7 = c0070u5.f157g;
                    if (c0070u7 == c0070u5) {
                        throw new IllegalStateException();
                    }
                    if (c0070u7.f155e) {
                        int i2 = c0070u5.f153c - c0070u5.f152b;
                        if (i2 <= (8192 - c0070u7.f153c) + (c0070u7.f154d ? 0 : c0070u7.f152b)) {
                            c0070u5.m8793d(c0070u7, i2);
                            c0070u5.m8796a();
                            C0071v.m8792a(c0070u5);
                        }
                    }
                }
                c0053f.f120b -= j2;
                this.f120b += j2;
                r9 -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: F */
    public AbstractC0054g mo8822F() throws IOException {
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e2, code lost:
        if (r11 == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e5, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00eb, code lost:
        r0 = android.support.p012v4.media.C0082b.m8752j("Expected leading [0-9] or '-' character but was 0x");
        r0.append(java.lang.Integer.toHexString(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0109, code lost:
        throw new java.lang.NumberFormatException(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x013f, code lost:
        r6.f120b -= r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x014d, code lost:
        if (r12 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0153, code lost:
        r9 = -r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0157, code lost:
        return r9;
     */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    @Override // p011aa.AbstractC0055h
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo8812G() {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p011aa.C0053f.mo8812G():long");
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // p011aa.AbstractC0055h
    /* renamed from: H */
    public String mo8811H(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        char c = 65535;
        if (j != Long.MAX_VALUE) {
            c = j + 1;
        }
        long m8843o = m8843o((byte) 10, 0L, c);
        if (m8843o != -1) {
            return m8860J(m8843o);
        }
        if (c < this.f120b && m8844l(c - 1) == 13 && m8844l(c) == 10) {
            return m8860J(c);
        }
        C0053f c0053f = new C0053f();
        m8845k(c0053f, 0L, Math.min(32L, this.f120b));
        StringBuilder m8752j = C0082b.m8752j("\\n not found: limit=");
        m8752j.append(Math.min(this.f120b, j));
        m8752j.append(" content=");
        m8752j.append(c0053f.m8840s().mo8788h());
        m8752j.append((char) 8230);
        throw new EOFException(m8752j.toString());
    }

    /* renamed from: J */
    public String m8860J(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (m8844l(j2) == 13) {
                String m8862B = m8862B(j2, C0047a0.f107a);
                mo8804j(2L);
                return m8862B;
            }
        }
        String m8862B2 = m8862B(j, C0047a0.f107a);
        mo8804j(1L);
        return m8862B2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        if (r0.f155e == false) goto L14;
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p011aa.C0070u m8859K(int r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = 1
            if (r0 < r1) goto L50
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L50
            r0 = r3
            aa.u r0 = r0.f119a
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L2a
            aa.u r0 = p011aa.C0071v.m8791b()
            r5 = r0
            r0 = r3
            r1 = r5
            r0.f119a = r1
            r0 = r5
            r1 = r5
            r0.f157g = r1
            r0 = r5
            r1 = r5
            r0.f156f = r1
            r0 = r5
            return r0
        L2a:
            r0 = r5
            aa.u r0 = r0.f157g
            r6 = r0
            r0 = r6
            int r0 = r0.f153c
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L44
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.f155e
            if (r0 != 0) goto L4e
        L44:
            aa.u r0 = p011aa.C0071v.m8791b()
            r5 = r0
            r0 = r6
            r1 = r5
            aa.u r0 = r0.m8795b(r1)
        L4e:
            r0 = r5
            return r0
        L50:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p011aa.C0053f.m8859K(int):aa.u");
    }

    /* renamed from: L */
    public C0053f m8858L(C0056i c0056i) {
        if (c0056i != null) {
            c0056i.mo8781p(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    /* renamed from: P */
    public C0053f m8857P(byte[] bArr) {
        if (bArr != null) {
            m8856U(bArr, 0, bArr.length);
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: Q */
    public void mo8810Q(long j) throws EOFException {
        if (this.f120b >= j) {
            return;
        }
        throw new EOFException();
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: R */
    public /* bridge */ /* synthetic */ AbstractC0054g mo8821R(String str) throws IOException {
        m8848d0(str);
        return this;
    }

    /* renamed from: U */
    public C0053f m8856U(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            C0047a0.m8868b(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                C0070u m8859K = m8859K(1);
                int min = Math.min(i3 - i, 8192 - m8859K.f153c);
                System.arraycopy(bArr, i, m8859K.f151a, m8859K.f153c, min);
                i += min;
                m8859K.f153c += min;
            }
            this.f120b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: V */
    public long mo8809V(byte b) {
        return m8843o(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: W */
    public long m8855W(AbstractC0074y abstractC0074y) throws IOException {
        if (abstractC0074y != null) {
            ?? r0 = 0;
            while (true) {
                char c = r0;
                long mo609f = abstractC0074y.mo609f(this, 8192L);
                if (mo609f == -1) {
                    return c;
                }
                r0 = c + mo609f;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    @Override // p011aa.AbstractC0055h
    /* renamed from: X */
    public long mo8808X() {
        char c;
        int i;
        boolean z;
        byte b;
        int i2;
        int i3;
        if (this.f120b != 0) {
            int i4 = 0;
            boolean z2 = false;
            char c2 = 0;
            do {
                C0070u c0070u = this.f119a;
                byte[] bArr = c0070u.f151a;
                int i5 = c0070u.f152b;
                int i6 = c0070u.f153c;
                c = c2;
                i = i4;
                while (true) {
                    z = z2;
                    if (i5 >= i6) {
                        break;
                    }
                    b = bArr[i5];
                    if (b < 48 || b > 57) {
                        if (b >= 97 && b <= 102) {
                            i3 = b - 97;
                        } else if (b < 65 || b > 70) {
                            break;
                        } else {
                            i3 = b - 65;
                        }
                        i2 = i3 + 10;
                    } else {
                        i2 = b - 48;
                    }
                    if ((0 & c) != 0) {
                        C0053f mo8818g = new C0053f().mo8818g(c);
                        mo8818g.m8854Y(b);
                        StringBuilder m8752j = C0082b.m8752j("Number too large: ");
                        m8752j.append(mo8818g.m8861D());
                        throw new NumberFormatException(m8752j.toString());
                    }
                    c = (c << 4) | i2;
                    i5++;
                    i++;
                }
                if (i == 0) {
                    StringBuilder m8752j2 = C0082b.m8752j("Expected leading [0-9a-fA-F] character but was 0x");
                    m8752j2.append(Integer.toHexString(b));
                    throw new NumberFormatException(m8752j2.toString());
                }
                z = true;
                if (i5 == i6) {
                    this.f119a = c0070u.m8796a();
                    C0071v.m8792a(c0070u);
                } else {
                    c0070u.f152b = i5;
                }
                if (z) {
                    break;
                }
                i4 = i;
                z2 = z;
                c2 = c;
            } while (this.f119a != null);
            this.f120b -= i;
            return c;
        }
        throw new IllegalStateException("size == 0");
    }

    /* renamed from: Y */
    public C0053f m8854Y(int i) {
        C0070u m8859K = m8859K(1);
        byte[] bArr = m8859K.f151a;
        int i2 = m8859K.f153c;
        m8859K.f153c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f120b++;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: Z */
    public C0053f mo8820S(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            m8854Y(48);
            return this;
        }
        boolean z = false;
        int i2 = 1;
        char c = j;
        if (i < 0) {
            c = -j;
            if (c < 0) {
                m8848d0("-9223372036854775808");
                return this;
            }
            z = true;
        }
        if (c >= 100000000) {
            i2 = c < 1000000000000L ? c < 10000000000L ? c < 1000000000 ? 9 : 10 : c < 100000000000L ? 11 : 12 : c < 1000000000000000L ? c < 10000000000000L ? 13 : c < 100000000000000L ? 14 : 15 : c < 100000000000000000L ? c < 10000000000000000L ? 16 : 17 : c < 1000000000000000000L ? 18 : 19;
        } else if (c >= 10000) {
            i2 = c < 1000000 ? c < 100000 ? 5 : 6 : c < 10000000 ? 7 : 8;
        } else if (c >= 100) {
            i2 = c < 1000 ? 3 : 4;
        } else if (c >= 10) {
            i2 = 2;
        }
        int i3 = i2;
        if (z) {
            i3 = i2 + 1;
        }
        C0070u m8859K = m8859K(i3);
        byte[] bArr = m8859K.f151a;
        int i4 = m8859K.f153c + i3;
        while (c != 0) {
            i4--;
            bArr[i4] = f118c[(int) (c % '\n')];
            c /= '\n';
        }
        if (z) {
            bArr[i4 - 1] = (byte) 45;
        }
        m8859K.f153c += i3;
        this.f120b += i3;
        return this;
    }

    @Override // p011aa.AbstractC0055h, p011aa.AbstractC0054g
    /* renamed from: a */
    public C0053f mo8807a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a0 */
    public C0053f mo8818g(long j) {
        if (j == 0) {
            m8854Y(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        C0070u m8859K = m8859K(numberOfTrailingZeros);
        byte[] bArr = m8859K.f151a;
        int i = m8859K.f153c;
        ?? r9 = j;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f118c[(int) (15 & r9)];
            r9 >>>= 4;
        }
        m8859K.f153c += numberOfTrailingZeros;
        this.f120b += numberOfTrailingZeros;
        return this;
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: b */
    public C0075z mo610b() {
        return C0075z.f162d;
    }

    /* renamed from: b0 */
    public C0053f m8851b0(int i) {
        C0070u m8859K = m8859K(4);
        byte[] bArr = m8859K.f151a;
        int i2 = m8859K.f153c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m8859K.f153c = i5 + 1;
        this.f120b += 4;
        return this;
    }

    /* renamed from: c0 */
    public C0053f m8850c0(int i) {
        C0070u m8859K = m8859K(2);
        byte[] bArr = m8859K.f151a;
        int i2 = m8859K.f153c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m8859K.f153c = i3 + 1;
        this.f120b += 2;
        return this;
    }

    public Object clone() throws CloneNotSupportedException {
        C0053f c0053f = new C0053f();
        if (this.f120b != 0) {
            C0070u m8794c = this.f119a.m8794c();
            c0053f.f119a = m8794c;
            m8794c.f157g = m8794c;
            m8794c.f156f = m8794c;
            C0070u c0070u = this.f119a;
            while (true) {
                c0070u = c0070u.f156f;
                if (c0070u == this.f119a) {
                    break;
                }
                c0053f.f119a.f157g.m8795b(c0070u.m8794c());
            }
            c0053f.f120b = this.f120b;
        }
        return c0053f;
    }

    @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: d */
    public final void m8849d() {
        try {
            mo8804j(this.f120b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: d0 */
    public C0053f m8848d0(String str) {
        m8847e0(str, 0, str.length());
        return this;
    }

    /* renamed from: e0 */
    public C0053f m8847e0(String str, int i, int i2) {
        char charAt;
        if (i >= 0) {
            if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 > str.length()) {
                StringBuilder m8751k = C0082b.m8751k("endIndex > string.length: ", i2, " > ");
                m8751k.append(str.length());
                throw new IllegalArgumentException(m8751k.toString());
            } else {
                while (i < i2) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 128) {
                        C0070u m8859K = m8859K(1);
                        byte[] bArr = m8859K.f151a;
                        int i3 = m8859K.f153c - i;
                        int min = Math.min(i2, 8192 - i3);
                        int i4 = i + 1;
                        bArr[i + i3] = (byte) charAt2;
                        while (true) {
                            i = i4;
                            if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                break;
                            }
                            i4 = i + 1;
                            bArr[i + i3] = (byte) charAt;
                        }
                        int i5 = m8859K.f153c;
                        int i6 = (i3 + i) - i5;
                        m8859K.f153c = i5 + i6;
                        this.f120b += i6;
                    } else {
                        if (charAt2 < 2048) {
                            m8854Y((charAt2 >> 6) | 192);
                            m8854Y((charAt2 & '?') | 128);
                        } else if (charAt2 < 55296 || charAt2 > 57343) {
                            m8854Y((charAt2 >> '\f') | 224);
                            m8854Y(((charAt2 >> 6) & 63) | 128);
                            m8854Y((charAt2 & '?') | 128);
                        } else {
                            int i7 = i + 1;
                            char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                            if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                                m8854Y(63);
                                i = i7;
                            } else {
                                int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                m8854Y((i8 >> 18) | 240);
                                m8854Y(((i8 >> 12) & 63) | 128);
                                m8854Y(((i8 >> 6) & 63) | 128);
                                m8854Y((i8 & 63) | 128);
                                i += 2;
                            }
                        }
                        i++;
                    }
                }
                return this;
            }
        }
        throw new IllegalArgumentException(C0033h.m8886k("beginIndex < 0: ", i));
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0053f)) {
            return false;
        }
        C0053f c0053f = (C0053f) obj;
        long j = this.f120b;
        if (j != c0053f.f120b) {
            return false;
        }
        char c = 0;
        if (j == 0) {
            return true;
        }
        C0070u c0070u = this.f119a;
        C0070u c0070u2 = c0053f.f119a;
        int i = c0070u.f152b;
        int i2 = c0070u2.f152b;
        while (c < this.f120b) {
            long min = Math.min(c0070u.f153c - i, c0070u2.f153c - i2);
            int i3 = 0;
            while (i3 < min) {
                if (c0070u.f151a[i] != c0070u2.f151a[i2]) {
                    return false;
                }
                i3++;
                i++;
                i2++;
            }
            C0070u c0070u3 = c0070u;
            int i4 = i;
            if (i == c0070u.f153c) {
                c0070u3 = c0070u.f156f;
                i4 = c0070u3.f152b;
            }
            int i5 = i2;
            C0070u c0070u4 = c0070u2;
            if (i2 == c0070u2.f153c) {
                c0070u4 = c0070u2.f156f;
                i5 = c0070u4.f152b;
            }
            c += min;
            c0070u = c0070u3;
            i = i4;
            i2 = i5;
            c0070u2 = c0070u4;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // p011aa.AbstractC0074y
    /* renamed from: f */
    public long mo609f(C0053f c0053f, long j) {
        if (c0053f != null) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            ?? r0 = this.f120b;
            if (r0 == 0) {
                return -1L;
            }
            char c = j;
            if (j > r0) {
                c = r0;
            }
            c0053f.mo613E(this, c);
            return c;
        }
        throw new IllegalArgumentException("sink == null");
    }

    /* renamed from: f0 */
    public C0053f m8846f0(int i) {
        if (i < 128) {
            m8854Y(i);
        } else if (i < 2048) {
            m8854Y((i >> 6) | 192);
            m8854Y((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                m8854Y((i >> 12) | 224);
                m8854Y(((i >> 6) & 63) | 128);
                m8854Y((i & 63) | 128);
            } else {
                m8854Y(63);
            }
        } else if (i > 1114111) {
            StringBuilder m8752j = C0082b.m8752j("Unexpected code point: ");
            m8752j.append(Integer.toHexString(i));
            throw new IllegalArgumentException(m8752j.toString());
        } else {
            m8854Y((i >> 18) | 240);
            m8854Y(((i >> 12) & 63) | 128);
            m8854Y(((i >> 6) & 63) | 128);
            m8854Y((i & 63) | 128);
        }
        return this;
    }

    @Override // p011aa.AbstractC0054g, p011aa.AbstractC0073x, java.io.Flushable
    public void flush() {
    }

    public int hashCode() {
        int i;
        C0070u c0070u;
        C0070u c0070u2 = this.f119a;
        if (c0070u2 == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = c0070u2.f153c;
            i = i2;
            for (int i4 = c0070u2.f152b; i4 < i3; i4++) {
                i = (i * 31) + c0070u2.f151a[i4];
            }
            c0070u = c0070u2.f156f;
            c0070u2 = c0070u;
            i2 = i;
        } while (c0070u != this.f119a);
        return i;
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: i */
    public C0056i mo8805i(long j) throws EOFException {
        return new C0056i(mo8797x(j));
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override // p011aa.AbstractC0055h
    /* renamed from: j */
    public void mo8804j(long j) throws EOFException {
        C0070u c0070u;
        while (j > 0) {
            if (this.f119a == null) {
                throw new EOFException();
            }
            int min = (int) Math.min((long) j, c0070u.f153c - c0070u.f152b);
            long j2 = min;
            this.f120b -= j2;
            ?? r0 = j - j2;
            C0070u c0070u2 = this.f119a;
            int i = c0070u2.f152b + min;
            c0070u2.f152b = i;
            j = r0;
            if (i == c0070u2.f153c) {
                this.f119a = c0070u2.m8796a();
                C0071v.m8792a(c0070u2);
                j = r0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: k */
    public final C0053f m8845k(C0053f c0053f, long j, long j2) {
        C0070u c0070u;
        boolean z;
        char c;
        if (c0053f != null) {
            C0047a0.m8868b(this.f120b, j, j2);
            if (j2 == 0) {
                return this;
            }
            c0053f.f120b += j2;
            C0070u c0070u2 = this.f119a;
            ?? r9 = j;
            while (true) {
                C0070u c0070u3 = c0070u2;
                int i = c0070u3.f153c;
                int i2 = c0070u3.f152b;
                c0070u = c0070u3;
                z = r9;
                c = j2;
                if (r9 >= i - i2) {
                    r9 -= i - i2;
                    c0070u2 = c0070u3.f156f;
                }
            }
            while (c > 0) {
                C0070u m8794c = c0070u.m8794c();
                int i3 = (int) (m8794c.f152b + (z ? 1L : 0L));
                m8794c.f152b = i3;
                m8794c.f153c = Math.min(i3 + c, m8794c.f153c);
                C0070u c0070u4 = c0053f.f119a;
                if (c0070u4 == null) {
                    m8794c.f157g = m8794c;
                    m8794c.f156f = m8794c;
                    c0053f.f119a = m8794c;
                } else {
                    c0070u4.f157g.m8795b(m8794c);
                }
                c -= m8794c.f153c - m8794c.f152b;
                c0070u = c0070u.f156f;
                z = false;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* renamed from: l */
    public final byte m8844l(long j) {
        C0070u c0070u;
        int i;
        ?? r0;
        C0047a0.m8868b(this.f120b, j, 1L);
        long j2 = this.f120b;
        if (j2 - j <= j) {
            char c = j - j2;
            C0070u c0070u2 = this.f119a;
            do {
                c0070u = c0070u2.f157g;
                int i2 = c0070u.f153c;
                i = c0070u.f152b;
                r0 = c + (i2 - i);
                c0070u2 = c0070u;
                c = r0;
            } while (r0 < 0);
            return c0070u.f151a[i + ((int) r0)];
        }
        C0070u c0070u3 = this.f119a;
        ?? r8 = j;
        while (true) {
            C0070u c0070u4 = c0070u3;
            int i3 = c0070u4.f153c;
            int i4 = c0070u4.f152b;
            long j3 = i3 - i4;
            if (r8 < j3) {
                return c0070u4.f151a[i4 + ((int) r8)];
            }
            r8 -= j3;
            c0070u3 = c0070u4.f156f;
        }
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: m */
    public /* bridge */ /* synthetic */ AbstractC0054g mo8817m(int i) throws IOException {
        m8850c0(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* renamed from: o */
    public long m8843o(byte b, long j, long j2) {
        C0070u c0070u;
        C0070u c0070u2;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f120b), Long.valueOf((long) j), Long.valueOf((long) j2)));
        }
        char c = this.f120b;
        char c2 = j2 > c ? c : j2;
        if (j == c2 || (c0070u = this.f119a) == null) {
            return -1L;
        }
        char c3 = 0;
        C0070u c0070u3 = c0070u;
        if (c - j < j) {
            C0070u c0070u4 = c0070u;
            while (true) {
                c3 = c;
                c0070u2 = c0070u4;
                if (c <= j) {
                    break;
                }
                c0070u4 = c0070u4.f157g;
                c -= c0070u4.f153c - c0070u4.f152b;
            }
        } else {
            while (true) {
                ?? r0 = (c0070u3.f153c - c0070u3.f152b) + c3;
                if (r0 >= j) {
                    break;
                }
                c0070u3 = c0070u3.f156f;
                c3 = r0;
            }
            c0070u2 = c0070u3;
        }
        while (c3 < c2) {
            byte[] bArr = c0070u2.f151a;
            int min = (int) Math.min(c0070u2.f153c, (c0070u2.f152b + c2) - c3);
            for (int i = (int) ((c0070u2.f152b + j) - c3); i < min; i++) {
                if (bArr[i] == b) {
                    return (i - c0070u2.f152b) + c3;
                }
            }
            c3 += c0070u2.f153c - c0070u2.f152b;
            c0070u2 = c0070u2.f156f;
            j = c3;
        }
        return -1L;
    }

    /* renamed from: p */
    public int m8842p(byte[] bArr, int i, int i2) {
        C0047a0.m8868b(bArr.length, i, i2);
        C0070u c0070u = this.f119a;
        if (c0070u == null) {
            return -1;
        }
        int min = Math.min(i2, c0070u.f153c - c0070u.f152b);
        System.arraycopy(c0070u.f151a, c0070u.f152b, bArr, i, min);
        int i3 = c0070u.f152b + min;
        c0070u.f152b = i3;
        this.f120b -= min;
        if (i3 == c0070u.f153c) {
            this.f119a = c0070u.m8796a();
            C0071v.m8792a(c0070u);
        }
        return min;
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: q */
    public /* bridge */ /* synthetic */ AbstractC0054g mo8816q(int i) throws IOException {
        m8851b0(i);
        return this;
    }

    /* renamed from: r */
    public byte[] m8841r() {
        try {
            return mo8797x(this.f120b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        C0070u c0070u = this.f119a;
        if (c0070u == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), c0070u.f153c - c0070u.f152b);
        byteBuffer.put(c0070u.f151a, c0070u.f152b, min);
        int i = c0070u.f152b + min;
        c0070u.f152b = i;
        this.f120b -= min;
        if (i == c0070u.f153c) {
            this.f119a = c0070u.m8796a();
            C0071v.m8792a(c0070u);
        }
        return min;
    }

    @Override // p011aa.AbstractC0055h
    public byte readByte() {
        long j = this.f120b;
        if (j != 0) {
            C0070u c0070u = this.f119a;
            int i = c0070u.f152b;
            int i2 = c0070u.f153c;
            byte[] bArr = c0070u.f151a;
            int i3 = i + 1;
            byte b = bArr[i];
            this.f120b = j - 1;
            if (i3 == i2) {
                this.f119a = c0070u.m8796a();
                C0071v.m8792a(c0070u);
            } else {
                c0070u.f152b = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // p011aa.AbstractC0055h
    public int readInt() {
        long j = this.f120b;
        if (j < 4) {
            StringBuilder m8752j = C0082b.m8752j("size < 4: ");
            m8752j.append(this.f120b);
            throw new IllegalStateException(m8752j.toString());
        }
        C0070u c0070u = this.f119a;
        int i = c0070u.f152b;
        int i2 = c0070u.f153c;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = c0070u.f151a;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        int i5 = i4 + 1;
        byte b3 = bArr[i4];
        int i6 = i5 + 1;
        byte b4 = bArr[i5];
        this.f120b = j - 4;
        if (i6 == i2) {
            this.f119a = c0070u.m8796a();
            C0071v.m8792a(c0070u);
        } else {
            c0070u.f152b = i6;
        }
        return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    @Override // p011aa.AbstractC0055h
    public short readShort() {
        long j = this.f120b;
        if (j < 2) {
            StringBuilder m8752j = C0082b.m8752j("size < 2: ");
            m8752j.append(this.f120b);
            throw new IllegalStateException(m8752j.toString());
        }
        C0070u c0070u = this.f119a;
        int i = c0070u.f152b;
        int i2 = c0070u.f153c;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = c0070u.f151a;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        this.f120b = j - 2;
        if (i4 == i2) {
            this.f119a = c0070u.m8796a();
            C0071v.m8792a(c0070u);
        } else {
            c0070u.f152b = i4;
        }
        return (short) (((b & 255) << 8) | (b2 & 255));
    }

    /* renamed from: s */
    public C0056i m8840s() {
        return new C0056i(m8841r());
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: t */
    public String mo8800t() throws EOFException {
        return mo8811H(Long.MAX_VALUE);
    }

    public String toString() {
        long j = this.f120b;
        if (j <= 2147483647L) {
            int i = (int) j;
            return (i == 0 ? C0056i.f122e : new C0072w(this, i)).toString();
        }
        StringBuilder m8752j = C0082b.m8752j("size > Integer.MAX_VALUE: ");
        m8752j.append(this.f120b);
        throw new IllegalArgumentException(m8752j.toString());
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: u */
    public int mo8799u() {
        int readInt = readInt();
        Charset charset = C0047a0.f107a;
        return ((readInt & 255) << 24) | (((-16777216) & readInt) >>> 24) | ((16711680 & readInt) >>> 8) | ((65280 & readInt) << 8);
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: v */
    public boolean mo8798v() {
        return this.f120b == 0;
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: w */
    public /* bridge */ /* synthetic */ AbstractC0054g mo8815w(int i) throws IOException {
        m8854Y(i);
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                C0070u m8859K = m8859K(1);
                int min = Math.min(i, 8192 - m8859K.f153c);
                byteBuffer.get(m8859K.f151a, m8859K.f153c, min);
                i -= min;
                m8859K.f153c += min;
            }
            this.f120b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: x */
    public byte[] mo8797x(long j) throws EOFException {
        C0047a0.m8868b(this.f120b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            m8863A(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    @Override // p011aa.AbstractC0054g
    /* renamed from: z */
    public /* bridge */ /* synthetic */ AbstractC0054g mo8814z(byte[] bArr) throws IOException {
        m8857P(bArr);
        return this;
    }
}
