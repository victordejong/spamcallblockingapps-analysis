package p000a;

import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
/* renamed from: a.c */
/* loaded from: classes-dex2jar.jar:a/c.class */
public final class C0005c implements AbstractC0007d, AbstractC0008e, Cloneable, ByteChannel {

    /* renamed from: c */
    private static final byte[] f12c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable

    /* renamed from: a */
    C0022o f13a;

    /* renamed from: b */
    long f14b;

    /* renamed from: a */
    public int m8138a(byte[] bArr, int i, int i2) {
        C0029u.m8026a(bArr.length, i, i2);
        C0022o c0022o = this.f13a;
        if (c0022o == null) {
            return -1;
        }
        int min = Math.min(i2, c0022o.f48c - c0022o.f47b);
        System.arraycopy(c0022o.f46a, c0022o.f47b, bArr, i, min);
        c0022o.f47b += min;
        this.f14b -= min;
        if (c0022o.f47b == c0022o.f48c) {
            this.f13a = c0022o.m8054b();
            C0023p.m8051a(c0022o);
        }
        return min;
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public long mo8080a(byte b) {
        return m8148a(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* renamed from: a */
    public long m8148a(byte b, long j, long j2) {
        C0022o c0022o;
        C0022o c0022o2;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f14b), Long.valueOf(j), Long.valueOf(j2)));
        }
        char c = this.f14b;
        if (j2 <= c) {
            c = j2;
        }
        if (j == c || (c0022o = this.f13a) == null) {
            return -1L;
        }
        ?? r0 = this.f14b;
        char c2 = 0;
        C0022o c0022o3 = c0022o;
        if (r0 - j >= j) {
            while (true) {
                ?? r02 = (c0022o3.f48c - c0022o3.f47b) + c2;
                c0022o2 = c0022o3;
                if (r02 >= j) {
                    break;
                }
                c0022o3 = c0022o3.f51f;
                c2 = r02;
            }
        } else {
            char c3 = r0;
            C0022o c0022o4 = c0022o;
            while (true) {
                c0022o2 = c0022o4;
                c2 = c3;
                if (c3 <= j) {
                    break;
                }
                c0022o4 = c0022o4.f52g;
                c3 -= c0022o4.f48c - c0022o4.f47b;
            }
        }
        char c4 = c2;
        char c5 = j;
        while (c4 < c) {
            byte[] bArr = c0022o2.f46a;
            int min = (int) Math.min(c0022o2.f48c, (c0022o2.f47b + c) - c4);
            for (int i = (int) ((c0022o2.f47b + c5) - c4); i < min; i++) {
                if (bArr[i] == b) {
                    return (i - c0022o2.f47b) + c4;
                }
            }
            c5 = (c0022o2.f48c - c0022o2.f47b) + c4;
            c0022o2 = c0022o2.f51f;
            c4 = c5;
        }
        return -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public long mo2087a(C0005c c0005c, long j) {
        if (c0005c != null) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            ?? r0 = this.f14b;
            if (r0 == 0) {
                return -1L;
            }
            char c = j;
            if (j > r0) {
                c = r0;
            }
            c0005c.mo2089a_(this, c);
            return c;
        }
        throw new IllegalArgumentException("sink == null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: a */
    public long m8142a(AbstractC0026s abstractC0026s) {
        if (abstractC0026s != null) {
            ?? r0 = 0;
            while (true) {
                char c = r0;
                long mo2087a = abstractC0026s.mo2087a(this, 8192L);
                if (mo2087a == -1) {
                    return c;
                }
                r0 = c + mo2087a;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    /* renamed from: a */
    public C0005c m8147a(int i) {
        if (i < 128) {
            mo8084i(i);
        } else if (i < 2048) {
            mo8084i((i >> 6) | 192);
            mo8084i((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                mo8084i((i >> 12) | 224);
                mo8084i(((i >> 6) & 63) | 128);
                mo8084i((i & 63) | 128);
            } else {
                mo8084i(63);
            }
        } else if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        } else {
            mo8084i((i >> 18) | 240);
            mo8084i(((i >> 12) & 63) | 128);
            mo8084i(((i >> 6) & 63) | 128);
            mo8084i((i & 63) | 128);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a */
    public C0005c m8144a(C0005c c0005c, long j, long j2) {
        C0022o c0022o;
        boolean z;
        char c;
        if (c0005c != null) {
            C0029u.m8026a(this.f14b, j, j2);
            if (j2 == 0) {
                return this;
            }
            c0005c.f14b += j2;
            C0022o c0022o2 = this.f13a;
            ?? r9 = j;
            while (true) {
                C0022o c0022o3 = c0022o2;
                c0022o = c0022o3;
                z = r9;
                c = j2;
                if (r9 >= c0022o3.f48c - c0022o3.f47b) {
                    r9 -= c0022o3.f48c - c0022o3.f47b;
                    c0022o2 = c0022o3.f51f;
                }
            }
            while (c > 0) {
                C0022o m8058a = c0022o.m8058a();
                m8058a.f47b = (int) (m8058a.f47b + (z ? 1L : 0L));
                m8058a.f48c = Math.min(m8058a.f47b + c, m8058a.f48c);
                C0022o c0022o4 = c0005c.f13a;
                if (c0022o4 == null) {
                    m8058a.f52g = m8058a;
                    m8058a.f51f = m8058a;
                    c0005c.f13a = m8058a;
                } else {
                    c0022o4.f52g.m8056a(m8058a);
                }
                c -= m8058a.f48c - m8058a.f47b;
                c0022o = c0022o.f51f;
                z = false;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    /* renamed from: a */
    public C0005c mo8090b(C0009f c0009f) {
        if (c0009f != null) {
            c0009f.mo8045a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    /* renamed from: a */
    public C0005c mo8089b(String str) {
        return m8140a(str, 0, str.length());
    }

    /* renamed from: a */
    public C0005c m8140a(String str, int i, int i2) {
        char charAt;
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
                        C0022o m8128e = m8128e(1);
                        byte[] bArr = m8128e.f46a;
                        int i3 = m8128e.f48c - i;
                        int min = Math.min(i2, 8192 - i3);
                        bArr[i + i3] = (byte) charAt2;
                        i++;
                        while (i < min && (charAt = str.charAt(i)) < 128) {
                            bArr[i + i3] = (byte) charAt;
                            i++;
                        }
                        int i4 = (i3 + i) - m8128e.f48c;
                        m8128e.f48c += i4;
                        this.f14b += i4;
                    } else {
                        if (charAt2 < 2048) {
                            mo8084i((charAt2 >> 6) | 192);
                            mo8084i((charAt2 & '?') | 128);
                        } else if (charAt2 < 55296 || charAt2 > 57343) {
                            mo8084i((charAt2 >> '\f') | 224);
                            mo8084i(((charAt2 >> 6) & 63) | 128);
                            mo8084i((charAt2 & '?') | 128);
                        } else {
                            int i5 = i + 1;
                            char charAt3 = i5 < i2 ? str.charAt(i5) : (char) 0;
                            if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                                mo8084i(63);
                                i = i5;
                            } else {
                                int i6 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                mo8084i((i6 >> 18) | 240);
                                mo8084i(((i6 >> 12) & 63) | 128);
                                mo8084i(((i6 >> 6) & 63) | 128);
                                mo8084i((i6 & 63) | 128);
                                i += 2;
                            }
                        }
                        i++;
                    }
                }
                return this;
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    /* renamed from: a */
    public C0005c m8139a(String str, int i, int i2, Charset charset) {
        if (str != null) {
            if (i < 0) {
                throw new IllegalAccessError("beginIndex < 0: " + i);
            } else if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 <= str.length()) {
                if (charset == null) {
                    throw new IllegalArgumentException("charset == null");
                }
                if (charset.equals(C0029u.f61a)) {
                    return m8140a(str, i, i2);
                }
                byte[] bytes = str.substring(i, i2).getBytes(charset);
                return mo8087c(bytes, 0, bytes.length);
            } else {
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    @Override // p000a.AbstractC0025r
    /* renamed from: a */
    public C0027t mo2091a() {
        return C0027t.f57c;
    }

    /* renamed from: a */
    public String m8145a(long j, Charset charset) {
        C0029u.m8026a(this.f14b, 0L, j);
        if (charset != null) {
            if (j > 2147483647L) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
            } else if (j == 0) {
                return "";
            } else {
                C0022o c0022o = this.f13a;
                if (c0022o.f47b + j > c0022o.f48c) {
                    return new String(mo8067g(j), charset);
                }
                String str = new String(c0022o.f46a, c0022o.f47b, (int) j, charset);
                c0022o.f47b = (int) (c0022o.f47b + j);
                this.f14b -= j;
                if (c0022o.f47b == c0022o.f48c) {
                    this.f13a = c0022o.m8054b();
                    C0023p.m8051a(c0022o);
                }
                return str;
            }
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public String mo8075a(Charset charset) {
        try {
            return m8145a(this.f14b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public void mo8078a(long j) {
        if (this.f14b >= j) {
            return;
        }
        throw new EOFException();
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public void mo8074a(byte[] bArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < bArr.length) {
                int m8138a = m8138a(bArr, i2, bArr.length - i2);
                if (m8138a == -1) {
                    throw new EOFException();
                }
                i = i2 + m8138a;
            } else {
                return;
            }
        }
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public boolean mo8077a(long j, C0009f c0009f) {
        return m8146a(j, c0009f, 0, c0009f.mo8038g());
    }

    /* renamed from: a */
    public boolean m8146a(long j, C0009f c0009f, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f14b - j < i2 || c0009f.mo8038g() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (m8135b(i3 + j) != c0009f.mo8049a(i + i3)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // p000a.AbstractC0025r
    /* renamed from: a_ */
    public void mo2089a_(C0005c c0005c, long j) {
        if (c0005c != null) {
            if (c0005c == this) {
                throw new IllegalArgumentException("source == this");
            }
            C0029u.m8026a(c0005c.f14b, 0L, j);
            ?? r9 = j;
            while (r9 > 0) {
                if (r9 < c0005c.f13a.f48c - c0005c.f13a.f47b) {
                    C0022o c0022o = this.f13a;
                    C0022o c0022o2 = c0022o != null ? c0022o.f52g : null;
                    if (c0022o2 != null && c0022o2.f50e) {
                        if ((c0022o2.f48c + r9) - (c0022o2.f49d ? 0 : c0022o2.f47b) <= 8192) {
                            c0005c.f13a.m8055a(c0022o2, (int) r9);
                            c0005c.f14b -= r9;
                            this.f14b += r9;
                            return;
                        }
                    }
                    c0005c.f13a = c0005c.f13a.m8057a((int) r9);
                }
                C0022o c0022o3 = c0005c.f13a;
                long j2 = c0022o3.f48c - c0022o3.f47b;
                c0005c.f13a = c0022o3.m8054b();
                C0022o c0022o4 = this.f13a;
                if (c0022o4 == null) {
                    this.f13a = c0022o3;
                    C0022o c0022o5 = this.f13a;
                    c0022o5.f52g = c0022o5;
                    c0022o5.f51f = c0022o5;
                } else {
                    c0022o4.f52g.m8056a(c0022o3).m8053c();
                }
                c0005c.f14b -= j2;
                this.f14b += j2;
                r9 -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* renamed from: b */
    public byte m8135b(long j) {
        C0022o c0022o;
        ?? r0;
        C0029u.m8026a(this.f14b, j, 1L);
        long j2 = this.f14b;
        if (j2 - j <= j) {
            char c = j - j2;
            C0022o c0022o2 = this.f13a;
            do {
                c0022o = c0022o2.f52g;
                r0 = c + (c0022o.f48c - c0022o.f47b);
                c0022o2 = c0022o;
                c = r0;
            } while (r0 < 0);
            return c0022o.f46a[c0022o.f47b + ((int) r0)];
        }
        C0022o c0022o3 = this.f13a;
        ?? r8 = j;
        while (true) {
            C0022o c0022o4 = c0022o3;
            long j3 = c0022o4.f48c - c0022o4.f47b;
            if (r8 < j3) {
                return c0022o4.f46a[c0022o4.f47b + ((int) r8)];
            }
            r8 -= j3;
            c0022o3 = c0022o4.f51f;
        }
    }

    /* renamed from: b */
    public long m8137b() {
        return this.f14b;
    }

    /* renamed from: b */
    public C0005c mo8084i(int i) {
        C0022o m8128e = m8128e(1);
        byte[] bArr = m8128e.f46a;
        int i2 = m8128e.f48c;
        m8128e.f48c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f14b++;
        return this;
    }

    /* renamed from: b */
    public C0005c mo8088c(byte[] bArr) {
        if (bArr != null) {
            return mo8087c(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: b */
    public C0005c mo8087c(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            C0029u.m8026a(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                C0022o m8128e = m8128e(1);
                int min = Math.min(i3 - i, 8192 - m8128e.f48c);
                System.arraycopy(bArr, i, m8128e.f46a, m8128e.f48c, min);
                i += min;
                m8128e.f48c += min;
            }
            this.f14b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p000a.AbstractC0007d, p000a.AbstractC0008e
    /* renamed from: c */
    public C0005c mo8072c() {
        return this;
    }

    /* renamed from: c */
    public C0005c mo8085h(int i) {
        C0022o m8128e = m8128e(2);
        byte[] bArr = m8128e.f46a;
        int i2 = m8128e.f48c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m8128e.f48c = i3 + 1;
        this.f14b += 2;
        return this;
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: c */
    public C0009f mo8071c(long j) {
        return new C0009f(mo8067g(j));
    }

    @Override // p000a.AbstractC0025r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: d */
    public C0005c mo8081u() {
        return this;
    }

    /* renamed from: d */
    public C0005c mo8086g(int i) {
        C0022o m8128e = m8128e(4);
        byte[] bArr = m8128e.f46a;
        int i2 = m8128e.f48c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m8128e.f48c = i5 + 1;
        this.f14b += 4;
        return this;
    }

    /* renamed from: d */
    public String m8129d(long j) {
        return m8145a(j, C0029u.f61a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
        if (r0.f50e == false) goto L14;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p000a.C0022o m8128e(int r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = 1
            if (r0 < r1) goto L51
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L51
            r0 = r3
            a.o r0 = r0.f13a
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L2d
            r0 = r3
            a.o r1 = p000a.C0023p.m8052a()
            r0.f13a = r1
            r0 = r3
            a.o r0 = r0.f13a
            r5 = r0
            r0 = r5
            r1 = r5
            r0.f52g = r1
            r0 = r5
            r1 = r5
            r0.f51f = r1
            r0 = r5
            return r0
        L2d:
            r0 = r5
            a.o r0 = r0.f52g
            r6 = r0
            r0 = r6
            int r0 = r0.f48c
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L47
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.f50e
            if (r0 != 0) goto L4f
        L47:
            r0 = r6
            a.o r1 = p000a.C0023p.m8052a()
            a.o r0 = r0.m8056a(r1)
            r5 = r0
        L4f:
            r0 = r5
            return r0
        L51:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.C0005c.m8128e(int):a.o");
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    @Override // p000a.AbstractC0008e
    /* renamed from: e */
    public String mo8069e(long j) {
        C0005c c0005c;
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        char c = 65535;
        if (j != Long.MAX_VALUE) {
            c = j + 1;
        }
        long m8148a = m8148a((byte) 10, 0L, c);
        if (m8148a != -1) {
            return m8126f(m8148a);
        }
        if (c < m8137b() && m8135b(c - 1) == 13 && m8135b((long) c) == 10) {
            return m8126f((long) c);
        }
        m8144a(new C0005c(), 0L, Math.min(32L, m8137b()));
        throw new EOFException("\\n not found: limit=" + Math.min(m8137b(), j) + " content=" + c0005c.m8122n().mo8040e() + (char) 8230);
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: e */
    public boolean mo8070e() {
        return this.f14b == 0;
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0005c)) {
            return false;
        }
        C0005c c0005c = (C0005c) obj;
        long j = this.f14b;
        if (j != c0005c.f14b) {
            return false;
        }
        char c = 0;
        if (j == 0) {
            return true;
        }
        C0022o c0022o = this.f13a;
        C0022o c0022o2 = c0005c.f13a;
        int i = c0022o.f47b;
        int i2 = c0022o2.f47b;
        while (c < this.f14b) {
            long min = Math.min(c0022o.f48c - i, c0022o2.f48c - i2);
            int i3 = 0;
            while (i3 < min) {
                if (c0022o.f46a[i] != c0022o2.f46a[i2]) {
                    return false;
                }
                i3++;
                i++;
                i2++;
            }
            if (i == c0022o.f48c) {
                c0022o = c0022o.f51f;
                i = c0022o.f47b;
            }
            if (i2 == c0022o2.f48c) {
                c0022o2 = c0022o2.f51f;
                i2 = c0022o2.f47b;
            }
            c += min;
        }
        return true;
    }

    /* renamed from: f */
    public C0009f m8127f(int i) {
        return i == 0 ? C0009f.f17b : new C0024q(this, i);
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: f */
    public InputStream mo8068f() {
        return new InputStream() { // from class: a.c.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(C0005c.this.f14b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (C0005c.this.f14b > 0) {
                    return C0005c.this.mo8066h() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return C0005c.this.m8138a(bArr, i, i2);
            }

            public String toString() {
                return C0005c.this + ".inputStream()";
            }
        };
    }

    /* renamed from: f */
    public String m8126f(long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (m8135b(j2) == 13) {
                String m8129d = m8129d(j2);
                mo8065h(2L);
                return m8129d;
            }
        }
        String m8129d2 = m8129d(j);
        mo8065h(1L);
        return m8129d2;
    }

    @Override // p000a.AbstractC0007d, p000a.AbstractC0025r, java.io.Flushable
    public void flush() {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: g */
    public long m8125g() {
        ?? r0 = this.f14b;
        if (r0 == 0) {
            return 0L;
        }
        C0022o c0022o = this.f13a.f52g;
        char c = r0;
        if (c0022o.f48c < 8192) {
            c = r0;
            if (c0022o.f50e) {
                c = r0 - (c0022o.f48c - c0022o.f47b);
            }
        }
        return c;
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: g */
    public byte[] mo8067g(long j) {
        C0029u.m8026a(this.f14b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            mo8074a(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: h */
    public byte mo8066h() {
        if (this.f14b != 0) {
            C0022o c0022o = this.f13a;
            int i = c0022o.f47b;
            int i2 = c0022o.f48c;
            byte[] bArr = c0022o.f46a;
            int i3 = i + 1;
            byte b = bArr[i];
            this.f14b--;
            if (i3 == i2) {
                this.f13a = c0022o.m8054b();
                C0023p.m8051a(c0022o);
            } else {
                c0022o.f47b = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override // p000a.AbstractC0008e
    /* renamed from: h */
    public void mo8065h(long j) {
        C0022o c0022o;
        while (j > 0) {
            if (this.f13a == null) {
                throw new EOFException();
            }
            int min = (int) Math.min((long) j, c0022o.f48c - this.f13a.f47b);
            long j2 = min;
            this.f14b -= j2;
            ?? r0 = j - j2;
            this.f13a.f47b += min;
            j = r0;
            if (this.f13a.f47b == this.f13a.f48c) {
                C0022o c0022o2 = this.f13a;
                this.f13a = c0022o2.m8054b();
                C0023p.m8051a(c0022o2);
                j = r0;
            }
        }
    }

    public int hashCode() {
        int i;
        C0022o c0022o;
        C0022o c0022o2 = this.f13a;
        if (c0022o2 == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = c0022o2.f48c;
            i = i2;
            for (int i4 = c0022o2.f47b; i4 < i3; i4++) {
                i = (i * 31) + c0022o2.f46a[i4];
            }
            c0022o = c0022o2.f51f;
            c0022o2 = c0022o;
            i2 = i;
        } while (c0022o != this.f13a);
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: i */
    public C0005c mo8082l(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return mo8084i(48);
        }
        boolean z = false;
        int i2 = 1;
        char c = j;
        if (i < 0) {
            c = -j;
            if (c < 0) {
                return mo8089b("-9223372036854775808");
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
        C0022o m8128e = m8128e(i3);
        byte[] bArr = m8128e.f46a;
        int i4 = m8128e.f48c + i3;
        while (c != 0) {
            i4--;
            bArr[i4] = f12c[(int) (c % '\n')];
            c /= '\n';
        }
        if (z) {
            bArr[i4 - 1] = (byte) 45;
        }
        m8128e.f48c += i3;
        this.f14b += i3;
        return this;
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: i */
    public short mo8064i() {
        if (this.f14b < 2) {
            throw new IllegalStateException("size < 2: " + this.f14b);
        }
        C0022o c0022o = this.f13a;
        int i = c0022o.f47b;
        int i2 = c0022o.f48c;
        if (i2 - i < 2) {
            return (short) (((mo8066h() & 255) << 8) | (mo8066h() & 255));
        }
        byte[] bArr = c0022o.f46a;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        this.f14b -= 2;
        if (i4 == i2) {
            this.f13a = c0022o.m8054b();
            C0023p.m8051a(c0022o);
        } else {
            c0022o.f47b = i4;
        }
        return (short) (((b & 255) << 8) | (b2 & 255));
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: j */
    public int mo8063j() {
        if (this.f14b < 4) {
            throw new IllegalStateException("size < 4: " + this.f14b);
        }
        C0022o c0022o = this.f13a;
        int i = c0022o.f47b;
        int i2 = c0022o.f48c;
        if (i2 - i < 4) {
            return ((mo8066h() & 255) << 24) | ((mo8066h() & 255) << 16) | ((mo8066h() & 255) << 8) | (mo8066h() & 255);
        }
        byte[] bArr = c0022o.f46a;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        int i5 = i4 + 1;
        byte b3 = bArr[i4];
        int i6 = i5 + 1;
        byte b4 = bArr[i5];
        this.f14b -= 4;
        if (i6 == i2) {
            this.f13a = c0022o.m8054b();
            C0023p.m8051a(c0022o);
        } else {
            c0022o.f47b = i6;
        }
        return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: j */
    public C0005c mo8083k(long j) {
        if (j == 0) {
            return mo8084i(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        C0022o m8128e = m8128e(numberOfTrailingZeros);
        byte[] bArr = m8128e.f46a;
        int i = m8128e.f48c;
        ?? r9 = j;
        for (int i2 = (m8128e.f48c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f12c[(int) (15 & r9)];
            r9 >>>= 4;
        }
        m8128e.f48c += numberOfTrailingZeros;
        this.f14b += numberOfTrailingZeros;
        return this;
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: k */
    public short mo8062k() {
        return C0029u.m8024a(mo8064i());
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: l */
    public int mo8061l() {
        return C0029u.m8027a(mo8063j());
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    @Override // p000a.AbstractC0008e
    /* renamed from: m */
    public long mo8060m() {
        char c;
        int i;
        boolean z;
        byte b;
        int i2;
        int i3;
        if (this.f14b != 0) {
            boolean z2 = false;
            int i4 = 0;
            char c2 = 0;
            do {
                C0022o c0022o = this.f13a;
                byte[] bArr = c0022o.f46a;
                int i5 = c0022o.f47b;
                int i6 = c0022o.f48c;
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
                        C0005c mo8084i = new C0005c().mo8083k(c).mo8084i((int) b);
                        throw new NumberFormatException("Number too large: " + mo8084i.m8121o());
                    }
                    c = (c << 4) | i2;
                    i5++;
                    i++;
                }
                if (i == 0) {
                    throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b));
                }
                z = true;
                if (i5 == i6) {
                    this.f13a = c0022o.m8054b();
                    C0023p.m8051a(c0022o);
                } else {
                    c0022o.f47b = i5;
                }
                if (z) {
                    break;
                }
                z2 = z;
                i4 = i;
                c2 = c;
            } while (this.f13a != null);
            this.f14b -= i;
            return c;
        }
        throw new IllegalStateException("size == 0");
    }

    /* renamed from: n */
    public C0009f m8122n() {
        return new C0009f(m8120q());
    }

    /* renamed from: o */
    public String m8121o() {
        try {
            return m8145a(this.f14b, C0029u.f61a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: p */
    public String mo8059p() {
        return mo8069e(Long.MAX_VALUE);
    }

    /* renamed from: q */
    public byte[] m8120q() {
        try {
            return mo8067g(this.f14b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: r */
    public void m8119r() {
        try {
            mo8065h(this.f14b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        C0022o c0022o = this.f13a;
        if (c0022o == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), c0022o.f48c - c0022o.f47b);
        byteBuffer.put(c0022o.f46a, c0022o.f47b, min);
        c0022o.f47b += min;
        this.f14b -= min;
        if (c0022o.f47b == c0022o.f48c) {
            this.f13a = c0022o.m8054b();
            C0023p.m8051a(c0022o);
        }
        return min;
    }

    /* renamed from: s */
    public C0005c clone() {
        C0005c c0005c = new C0005c();
        if (this.f14b == 0) {
            return c0005c;
        }
        c0005c.f13a = this.f13a.m8058a();
        C0022o c0022o = c0005c.f13a;
        c0022o.f52g = c0022o;
        c0022o.f51f = c0022o;
        C0022o c0022o2 = this.f13a;
        while (true) {
            c0022o2 = c0022o2.f51f;
            if (c0022o2 == this.f13a) {
                c0005c.f14b = this.f14b;
                return c0005c;
            }
            c0005c.f13a.f52g.m8056a(c0022o2.m8058a());
        }
    }

    /* renamed from: t */
    public C0009f m8117t() {
        long j = this.f14b;
        if (j <= 2147483647L) {
            return m8127f((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f14b);
    }

    public String toString() {
        return m8117t().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                C0022o m8128e = m8128e(1);
                int min = Math.min(i, 8192 - m8128e.f48c);
                byteBuffer.get(m8128e.f46a, m8128e.f48c, min);
                i -= min;
                m8128e.f48c += min;
            }
            this.f14b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }
}
