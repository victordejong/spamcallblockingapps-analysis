package p000;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.io.Closeable;
import java.io.EOFException;
import java.io.Flushable;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
/* renamed from: dm1 */
/* loaded from: classes3-dex2jar.jar:dm1.class */
public final class dm1 implements em1, Closeable, Flushable, WritableByteChannel, Cloneable, ByteChannel {

    /* renamed from: c */
    public static final byte[] f6090c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable

    /* renamed from: a */
    public gm1 f6091a;

    /* renamed from: b */
    public long f6092b;

    /* renamed from: A */
    public final fm1 m2491A() {
        long j = this.f6092b;
        if (j <= 2147483647L) {
            return m2490B((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f6092b);
    }

    /* renamed from: B */
    public final fm1 m2490B(int i) {
        return i == 0 ? fm1.f6656f : new im1(this, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        if (r0.f6710e == false) goto L14;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p000.gm1 m2489C(int r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = 1
            if (r0 < r1) goto L50
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L50
            r0 = r3
            gm1 r0 = r0.f6091a
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L2a
            gm1 r0 = p000.hm1.m1616b()
            r5 = r0
            r0 = r3
            r1 = r5
            r0.f6091a = r1
            r0 = r5
            r1 = r5
            r0.f6712g = r1
            r0 = r5
            r1 = r5
            r0.f6711f = r1
            r0 = r5
            return r0
        L2a:
            r0 = r5
            gm1 r0 = r0.f6712g
            r6 = r0
            r0 = r6
            int r0 = r0.f6708c
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L44
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.f6710e
            if (r0 != 0) goto L4e
        L44:
            gm1 r0 = p000.hm1.m1616b()
            r5 = r0
            r0 = r6
            r1 = r5
            gm1 r0 = r0.m1649b(r1)
        L4e:
            r0 = r5
            return r0
        L50:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.dm1.m2489C(int):gm1");
    }

    /* renamed from: D */
    public dm1 m2488D(byte[] bArr) {
        if (bArr != null) {
            m2487E(bArr, 0, bArr.length);
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: E */
    public dm1 m2487E(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            jm1.m1469b(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                gm1 m2489C = m2489C(1);
                int min = Math.min(i3 - i, 8192 - m2489C.f6708c);
                System.arraycopy(bArr, i, m2489C.f6706a, m2489C.f6708c, min);
                i += min;
                m2489C.f6708c += min;
            }
            this.f6092b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: F */
    public dm1 m2486F(int i) {
        gm1 m2489C = m2489C(1);
        byte[] bArr = m2489C.f6706a;
        int i2 = m2489C.f6708c;
        m2489C.f6708c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f6092b++;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: G */
    public dm1 m2485G(long j) {
        if (j == 0) {
            m2486F(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        gm1 m2489C = m2489C(numberOfTrailingZeros);
        byte[] bArr = m2489C.f6706a;
        int i = m2489C.f6708c;
        ?? r9 = j;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f6090c[(int) (15 & r9)];
            r9 >>>= 4;
        }
        m2489C.f6708c += numberOfTrailingZeros;
        this.f6092b += numberOfTrailingZeros;
        return this;
    }

    /* renamed from: H */
    public dm1 m2484H(String str, int i, int i2, Charset charset) {
        if (str != null) {
            if (i < 0) {
                throw new IllegalAccessError("beginIndex < 0: " + i);
            } else if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            } else if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            } else {
                if (charset.equals(jm1.f6840a)) {
                    m2482J(str, i, i2);
                    return this;
                }
                byte[] bytes = str.substring(i, i2).getBytes(charset);
                m2487E(bytes, 0, bytes.length);
                return this;
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    /* renamed from: I */
    public dm1 m2483I(String str) {
        m2482J(str, 0, str.length());
        return this;
    }

    /* renamed from: J */
    public dm1 m2482J(String str, int i, int i2) {
        char charAt;
        int i3;
        int i4;
        if (str != null) {
            if (i < 0) {
                throw new IllegalArgumentException("beginIndex < 0: " + i);
            } else if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            } else {
                while (i < i2) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 128) {
                        gm1 m2489C = m2489C(1);
                        byte[] bArr = m2489C.f6706a;
                        int i5 = m2489C.f6708c - i;
                        int min = Math.min(i2, 8192 - i5);
                        bArr[i + i5] = (byte) charAt2;
                        i++;
                        while (i < min && (charAt = str.charAt(i)) < 128) {
                            bArr[i + i5] = (byte) charAt;
                            i++;
                        }
                        int i6 = m2489C.f6708c;
                        int i7 = (i5 + i) - i6;
                        m2489C.f6708c = i6 + i7;
                        this.f6092b += i7;
                    } else {
                        if (charAt2 < 2048) {
                            i3 = charAt2 >> 6;
                            i4 = 192;
                        } else if (charAt2 < 55296 || charAt2 > 57343) {
                            m2486F((charAt2 >> '\f') | 224);
                            i3 = (charAt2 >> 6) & 63;
                            i4 = 128;
                        } else {
                            int i8 = i + 1;
                            char charAt3 = i8 < i2 ? str.charAt(i8) : (char) 0;
                            if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                                m2486F(63);
                                i = i8;
                            } else {
                                int i9 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                m2486F((i9 >> 18) | HighLevelEncoder.LATCH_TO_EDIFACT);
                                m2486F(((i9 >> 12) & 63) | 128);
                                m2486F(((i9 >> 6) & 63) | 128);
                                m2486F((i9 & 63) | 128);
                                i += 2;
                            }
                        }
                        m2486F(i3 | i4);
                        m2486F((charAt2 & '?') | 128);
                        i++;
                    }
                }
                return this;
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    /* renamed from: K */
    public dm1 m2481K(int i) {
        int i2;
        int i3;
        if (i >= 128) {
            if (i < 2048) {
                i3 = (i >> 6) | 192;
            } else {
                if (i < 65536) {
                    if (i >= 55296 && i <= 57343) {
                        m2486F(63);
                        return this;
                    }
                    i2 = (i >> 12) | 224;
                } else if (i > 1114111) {
                    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
                } else {
                    m2486F((i >> 18) | HighLevelEncoder.LATCH_TO_EDIFACT);
                    i2 = ((i >> 12) & 63) | 128;
                }
                m2486F(i2);
                i3 = ((i >> 6) & 63) | 128;
            }
            m2486F(i3);
            i = (i & 63) | 128;
        }
        m2486F(i);
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dm1)) {
            return false;
        }
        dm1 dm1Var = (dm1) obj;
        long j = this.f6092b;
        if (j != dm1Var.f6092b) {
            return false;
        }
        char c = 0;
        if (j == 0) {
            return true;
        }
        gm1 gm1Var = this.f6091a;
        gm1 gm1Var2 = dm1Var.f6091a;
        int i = gm1Var.f6707b;
        int i2 = gm1Var2.f6707b;
        while (c < this.f6092b) {
            long min = Math.min(gm1Var.f6708c - i, gm1Var2.f6708c - i2);
            int i3 = 0;
            while (i3 < min) {
                if (gm1Var.f6706a[i] != gm1Var2.f6706a[i2]) {
                    return false;
                }
                i3++;
                i++;
                i2++;
            }
            gm1 gm1Var3 = gm1Var;
            int i4 = i;
            if (i == gm1Var.f6708c) {
                gm1Var3 = gm1Var.f6711f;
                i4 = gm1Var3.f6707b;
            }
            int i5 = i2;
            gm1 gm1Var4 = gm1Var2;
            if (i2 == gm1Var2.f6708c) {
                gm1Var4 = gm1Var2.f6711f;
                i5 = gm1Var4.f6707b;
            }
            c += min;
            gm1Var = gm1Var3;
            i = i4;
            i2 = i5;
            gm1Var2 = gm1Var4;
        }
        return true;
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    /* renamed from: g */
    public dm1 clone() {
        dm1 dm1Var = new dm1();
        if (this.f6092b == 0) {
            return dm1Var;
        }
        gm1 m1648c = this.f6091a.m1648c();
        dm1Var.f6091a = m1648c;
        m1648c.f6712g = m1648c;
        m1648c.f6711f = m1648c;
        gm1 gm1Var = this.f6091a;
        while (true) {
            gm1Var = gm1Var.f6711f;
            if (gm1Var == this.f6091a) {
                dm1Var.f6092b = this.f6092b;
                return dm1Var;
            }
            dm1Var.f6091a.f6712g.m1649b(gm1Var.m1648c());
        }
    }

    /* renamed from: h */
    public boolean m2479h() {
        return this.f6092b == 0;
    }

    public int hashCode() {
        int i;
        gm1 gm1Var;
        gm1 gm1Var2 = this.f6091a;
        if (gm1Var2 == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = gm1Var2.f6708c;
            i = i2;
            for (int i4 = gm1Var2.f6707b; i4 < i3; i4++) {
                i = (i * 31) + gm1Var2.f6706a[i4];
            }
            gm1Var = gm1Var2.f6711f;
            gm1Var2 = gm1Var;
            i2 = i;
        } while (gm1Var != this.f6091a);
        return i;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    /* renamed from: l */
    public byte m2478l() {
        long j = this.f6092b;
        if (j != 0) {
            gm1 gm1Var = this.f6091a;
            int i = gm1Var.f6707b;
            int i2 = gm1Var.f6708c;
            byte[] bArr = gm1Var.f6706a;
            int i3 = i + 1;
            byte b = bArr[i];
            this.f6092b = j - 1;
            if (i3 == i2) {
                this.f6091a = gm1Var.m1650a();
                hm1.m1617a(gm1Var);
            } else {
                gm1Var.f6707b = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    /* renamed from: m */
    public byte[] m2477m(long j) {
        jm1.m1469b(this.f6092b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            m2476r(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    /* renamed from: r */
    public void m2476r(byte[] bArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < bArr.length) {
                int read = read(bArr, i2, bArr.length - i2);
                if (read == -1) {
                    throw new EOFException();
                }
                i = i2 + read;
            } else {
                return;
            }
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        gm1 gm1Var = this.f6091a;
        if (gm1Var == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), gm1Var.f6708c - gm1Var.f6707b);
        byteBuffer.put(gm1Var.f6706a, gm1Var.f6707b, min);
        int i = gm1Var.f6707b + min;
        gm1Var.f6707b = i;
        this.f6092b -= min;
        if (i == gm1Var.f6708c) {
            this.f6091a = gm1Var.m1650a();
            hm1.m1617a(gm1Var);
        }
        return min;
    }

    public int read(byte[] bArr, int i, int i2) {
        jm1.m1469b(bArr.length, i, i2);
        gm1 gm1Var = this.f6091a;
        if (gm1Var == null) {
            return -1;
        }
        int min = Math.min(i2, gm1Var.f6708c - gm1Var.f6707b);
        System.arraycopy(gm1Var.f6706a, gm1Var.f6707b, bArr, i, min);
        int i3 = gm1Var.f6707b + min;
        gm1Var.f6707b = i3;
        this.f6092b -= min;
        if (i3 == gm1Var.f6708c) {
            this.f6091a = gm1Var.m1650a();
            hm1.m1617a(gm1Var);
        }
        return min;
    }

    public String toString() {
        return m2491A().toString();
    }

    /* renamed from: v */
    public String m2475v(long j, Charset charset) {
        jm1.m1469b(this.f6092b, 0L, j);
        if (charset != null) {
            if (j > 2147483647L) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
            } else if (j == 0) {
                return "";
            } else {
                gm1 gm1Var = this.f6091a;
                if (gm1Var.f6707b + j > gm1Var.f6708c) {
                    return new String(m2477m(j), charset);
                }
                String str = new String(gm1Var.f6706a, gm1Var.f6707b, (int) j, charset);
                int i = (int) (gm1Var.f6707b + j);
                gm1Var.f6707b = i;
                this.f6092b -= j;
                if (i == gm1Var.f6708c) {
                    this.f6091a = gm1Var.m1650a();
                    hm1.m1617a(gm1Var);
                }
                return str;
            }
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                gm1 m2489C = m2489C(1);
                int min = Math.min(i, 8192 - m2489C.f6708c);
                byteBuffer.get(m2489C.f6706a, m2489C.f6708c, min);
                i -= min;
                m2489C.f6708c += min;
            }
            this.f6092b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: y */
    public String m2474y() {
        try {
            return m2475v(this.f6092b, jm1.f6840a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }
}
