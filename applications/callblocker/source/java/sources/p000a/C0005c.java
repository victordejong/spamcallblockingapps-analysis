package p000a;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
/* renamed from: a.c */
/* loaded from: classes-dex2jar.jar:a/c.class */
public final class C0005c implements AbstractC0006d, AbstractC0007e, Cloneable, ByteChannel {

    /* renamed from: c */
    private static final byte[] f12c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable

    /* renamed from: a */
    C0020o f13a;

    /* renamed from: b */
    long f14b;

    /* renamed from: a */
    public int m22563a(byte[] bArr, int i, int i2) {
        int i3;
        C0027u.m22450a(bArr.length, i, i2);
        C0020o c0020o = this.f13a;
        if (c0020o == null) {
            i3 = -1;
        } else {
            int min = Math.min(i2, c0020o.f46c - c0020o.f45b);
            System.arraycopy(c0020o.f44a, c0020o.f45b, bArr, i, min);
            c0020o.f45b += min;
            this.f14b -= min;
            i3 = min;
            if (c0020o.f45b == c0020o.f46c) {
                this.f13a = c0020o.m22478b();
                C0021p.m22475a(c0020o);
                i3 = min;
            }
        }
        return i3;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public long mo22504a(byte b) {
        return m22573a(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* renamed from: a */
    public long m22573a(byte b, long j, long j2) {
        C0020o c0020o;
        char c;
        char c2;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f14b), Long.valueOf((long) j), Long.valueOf((long) j2)));
        }
        char c3 = j2;
        if (j2 > this.f14b) {
            c3 = this.f14b;
        }
        if (j != c3) {
            C0020o c0020o2 = this.f13a;
            if (c0020o2 != null) {
                if (this.f14b - j >= j) {
                    ?? r0 = 0;
                    while (true) {
                        c = r0;
                        ?? r02 = (c0020o2.f46c - c0020o2.f45b) + c;
                        c0020o = c0020o2;
                        if (r02 >= j) {
                            break;
                        }
                        c0020o2 = c0020o2.f49f;
                        r0 = r02;
                    }
                } else {
                    ?? r03 = this.f14b;
                    while (true) {
                        char c4 = r03;
                        c = c4;
                        c0020o = c0020o2;
                        if (c4 <= j) {
                            break;
                        }
                        c0020o2 = c0020o2.f50g;
                        r03 = c4 - (c0020o2.f46c - c0020o2.f45b);
                    }
                }
                char c5 = j;
                loop2: while (true) {
                    if (c >= c3) {
                        c2 = 65535;
                        break;
                    }
                    byte[] bArr = c0020o.f44a;
                    int min = (int) Math.min(c0020o.f46c, (c0020o.f45b + c3) - c);
                    for (int i = (int) ((c0020o.f45b + c5) - c); i < min; i++) {
                        if (bArr[i] == b) {
                            c2 = (i - c0020o.f45b) + c;
                            break loop2;
                        }
                    }
                    c5 = (c0020o.f46c - c0020o.f45b) + c;
                    c0020o = c0020o.f49f;
                    c = c5;
                }
            } else {
                c2 = 65535;
            }
        } else {
            c2 = 65535;
        }
        return c2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public long mo90a(C0005c c0005c, long j) {
        char c;
        if (c0005c == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f14b == 0) {
            c = 65535;
        } else {
            c = j;
            if (j > this.f14b) {
                c = this.f14b;
            }
            c0005c.mo406a_(this, c);
        }
        return c;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public long mo22499a(AbstractC0023r abstractC0023r) {
        long j = this.f14b;
        if (j > 0) {
            abstractC0023r.mo406a_(this, j);
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* renamed from: a */
    public long m22567a(AbstractC0024s abstractC0024s) {
        if (abstractC0024s == null) {
            throw new IllegalArgumentException("source == null");
        }
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long mo90a = abstractC0024s.mo90a(this, 8192L);
            if (mo90a == -1) {
                return c;
            }
            r0 = c + mo90a;
        }
    }

    /* renamed from: a */
    public C0005c m22572a(int i) {
        if (i < 128) {
            mo22508i(i);
        } else if (i < 2048) {
            mo22508i((i >> 6) | 192);
            mo22508i((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                mo22508i((i >> 12) | 224);
                mo22508i(((i >> 6) & 63) | 128);
                mo22508i((i & 63) | 128);
            } else {
                mo22508i(63);
            }
        } else if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        } else {
            mo22508i((i >> 18) | 240);
            mo22508i(((i >> 12) & 63) | 128);
            mo22508i(((i >> 6) & 63) | 128);
            mo22508i((i & 63) | 128);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a */
    public C0005c m22569a(C0005c c0005c, long j, long j2) {
        C0020o c0020o;
        boolean z;
        char c;
        if (c0005c == null) {
            throw new IllegalArgumentException("out == null");
        }
        C0027u.m22450a(this.f14b, j, j2);
        if (j2 != 0) {
            c0005c.f14b += j2;
            C0020o c0020o2 = this.f13a;
            ?? r9 = j;
            while (true) {
                C0020o c0020o3 = c0020o2;
                c0020o = c0020o3;
                z = r9;
                c = j2;
                if (r9 >= c0020o3.f46c - c0020o3.f45b) {
                    r9 -= c0020o3.f46c - c0020o3.f45b;
                    c0020o2 = c0020o3.f49f;
                }
            }
            while (c > 0) {
                C0020o m22482a = c0020o.m22482a();
                m22482a.f45b = (int) (m22482a.f45b + (z ? 1L : 0L));
                m22482a.f46c = Math.min(m22482a.f45b + c, m22482a.f46c);
                if (c0005c.f13a == null) {
                    m22482a.f50g = m22482a;
                    m22482a.f49f = m22482a;
                    c0005c.f13a = m22482a;
                } else {
                    c0005c.f13a.f50g.m22480a(m22482a);
                }
                c -= m22482a.f46c - m22482a.f45b;
                c0020o = c0020o.f49f;
                z = false;
            }
        }
        return this;
    }

    /* renamed from: a */
    public C0005c mo22514b(C0008f c0008f) {
        if (c0008f == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        c0008f.mo22469a(this);
        return this;
    }

    /* renamed from: a */
    public C0005c mo22513b(String str) {
        return m22565a(str, 0, str.length());
    }

    /* renamed from: a */
    public C0005c m22565a(String str, int i, int i2) {
        char charAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        while (i < i2) {
            char charAt2 = str.charAt(i);
            if (charAt2 < 128) {
                C0020o m22553e = m22553e(1);
                byte[] bArr = m22553e.f44a;
                int i3 = m22553e.f46c - i;
                int min = Math.min(i2, 8192 - i3);
                bArr[i3 + i] = (byte) charAt2;
                i++;
                while (i < min && (charAt = str.charAt(i)) < 128) {
                    bArr[i + i3] = (byte) charAt;
                    i++;
                }
                int i4 = (i + i3) - m22553e.f46c;
                m22553e.f46c += i4;
                this.f14b += i4;
            } else if (charAt2 < 2048) {
                mo22508i((charAt2 >> 6) | 192);
                mo22508i((charAt2 & '?') | 128);
                i++;
            } else if (charAt2 < 55296 || charAt2 > 57343) {
                mo22508i((charAt2 >> '\f') | 224);
                mo22508i(((charAt2 >> 6) & 63) | 128);
                mo22508i((charAt2 & '?') | 128);
                i++;
            } else {
                char charAt3 = i + 1 < i2 ? str.charAt(i + 1) : (char) 0;
                if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                    mo22508i(63);
                    i++;
                } else {
                    int i5 = ((charAt3 & 9215) | ((charAt2 & 10239) << 10)) + 65536;
                    mo22508i((i5 >> 18) | 240);
                    mo22508i(((i5 >> 12) & 63) | 128);
                    mo22508i(((i5 >> 6) & 63) | 128);
                    mo22508i((i5 & 63) | 128);
                    i += 2;
                }
            }
        }
        return this;
    }

    /* renamed from: a */
    public C0005c m22564a(String str, int i, int i2, Charset charset) {
        C0005c mo22511c;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (charset.equals(C0027u.f59a)) {
            mo22511c = m22565a(str, i, i2);
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            mo22511c = mo22511c(bytes, 0, bytes.length);
        }
        return mo22511c;
    }

    @Override // p000a.AbstractC0023r
    /* renamed from: a */
    public C0025t mo408a() {
        return C0025t.f55c;
    }

    /* renamed from: a */
    public String m22570a(long j, Charset charset) {
        String str;
        C0027u.m22450a(this.f14b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            str = "";
        } else {
            C0020o c0020o = this.f13a;
            if (c0020o.f45b + j > c0020o.f46c) {
                str = new String(mo22490g(j), charset);
            } else {
                String str2 = new String(c0020o.f44a, c0020o.f45b, (int) j, charset);
                c0020o.f45b = (int) (c0020o.f45b + j);
                this.f14b -= j;
                str = str2;
                if (c0020o.f45b == c0020o.f46c) {
                    this.f13a = c0020o.m22478b();
                    C0021p.m22475a(c0020o);
                    str = str2;
                }
            }
        }
        return str;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public String mo22498a(Charset charset) {
        try {
            return m22570a(this.f14b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public void mo22502a(long j) {
        if (this.f14b < j) {
            throw new EOFException();
        }
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public void mo22497a(byte[] bArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < bArr.length) {
                int m22563a = m22563a(bArr, i2, bArr.length - i2);
                if (m22563a == -1) {
                    throw new EOFException();
                }
                i = i2 + m22563a;
            } else {
                return;
            }
        }
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public boolean mo22501a(long j, C0008f c0008f) {
        return m22571a(j, c0008f, 0, c0008f.mo22462g());
    }

    /* renamed from: a */
    public boolean m22571a(long j, C0008f c0008f, int i, int i2) {
        boolean z = false;
        if (j >= 0) {
            z = false;
            if (i >= 0) {
                z = false;
                if (i2 >= 0) {
                    z = false;
                    if (this.f14b - j >= i2) {
                        if (c0008f.mo22462g() - i >= i2) {
                            int i3 = 0;
                            while (true) {
                                if (i3 >= i2) {
                                    z = true;
                                    break;
                                }
                                z = false;
                                if (m22560b(i3 + j) != c0008f.mo22473a(i + i3)) {
                                    break;
                                }
                                i3++;
                            }
                        } else {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // p000a.AbstractC0023r
    /* renamed from: a_ */
    public void mo406a_(C0005c c0005c, long j) {
        if (c0005c == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (c0005c == this) {
            throw new IllegalArgumentException("source == this");
        }
        C0027u.m22450a(c0005c.f14b, 0L, j);
        ?? r9 = j;
        while (r9 > 0) {
            if (r9 < c0005c.f13a.f46c - c0005c.f13a.f45b) {
                C0020o c0020o = this.f13a != null ? this.f13a.f50g : null;
                if (c0020o != null && c0020o.f48e) {
                    if ((c0020o.f46c + r9) - (c0020o.f47d ? 0 : c0020o.f45b) <= 8192) {
                        c0005c.f13a.m22479a(c0020o, (int) r9);
                        c0005c.f14b -= r9;
                        this.f14b += r9;
                        return;
                    }
                }
                c0005c.f13a = c0005c.f13a.m22481a((int) r9);
            }
            C0020o c0020o2 = c0005c.f13a;
            long j2 = c0020o2.f46c - c0020o2.f45b;
            c0005c.f13a = c0020o2.m22478b();
            if (this.f13a == null) {
                this.f13a = c0020o2;
                C0020o c0020o3 = this.f13a;
                C0020o c0020o4 = this.f13a;
                C0020o c0020o5 = this.f13a;
                c0020o4.f50g = c0020o5;
                c0020o3.f49f = c0020o5;
            } else {
                this.f13a.f50g.m22480a(c0020o2).m22477c();
            }
            c0005c.f14b -= j2;
            this.f14b += j2;
            r9 -= j2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* renamed from: b */
    public byte m22560b(long j) {
        C0020o c0020o;
        byte b;
        C0020o c0020o2;
        C0027u.m22450a(this.f14b, j, 1L);
        if (this.f14b - j > j) {
            C0020o c0020o3 = this.f13a;
            ?? r8 = j;
            while (true) {
                c0020o2 = c0020o3;
                int i = c0020o2.f46c - c0020o2.f45b;
                if (r8 < i) {
                    break;
                }
                r8 -= i;
                c0020o3 = c0020o2.f49f;
            }
            b = c0020o2.f44a[c0020o2.f45b + ((int) r8)];
        } else {
            char c = j - this.f14b;
            C0020o c0020o4 = this.f13a.f50g;
            while (true) {
                c0020o = c0020o4;
                c += c0020o.f46c - c0020o.f45b;
                if (c >= 0) {
                    break;
                }
                c0020o4 = c0020o.f50g;
            }
            b = c0020o.f44a[c0020o.f45b + c];
        }
        return b;
    }

    /* renamed from: b */
    public long m22562b() {
        return this.f14b;
    }

    /* renamed from: b */
    public C0005c mo22508i(int i) {
        C0020o m22553e = m22553e(1);
        byte[] bArr = m22553e.f44a;
        int i2 = m22553e.f46c;
        m22553e.f46c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f14b++;
        return this;
    }

    /* renamed from: b */
    public C0005c mo22512c(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        return mo22511c(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public C0005c mo22511c(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        C0027u.m22450a(bArr.length, i, i2);
        int i3 = i + i2;
        while (i < i3) {
            C0020o m22553e = m22553e(1);
            int min = Math.min(i3 - i, 8192 - m22553e.f46c);
            System.arraycopy(bArr, i, m22553e.f44a, m22553e.f46c, min);
            i += min;
            m22553e.f46c = min + m22553e.f46c;
        }
        this.f14b += i2;
        return this;
    }

    @Override // p000a.AbstractC0006d, p000a.AbstractC0007e
    /* renamed from: c */
    public C0005c mo22495c() {
        return this;
    }

    /* renamed from: c */
    public C0005c mo22509h(int i) {
        C0020o m22553e = m22553e(2);
        byte[] bArr = m22553e.f44a;
        int i2 = m22553e.f46c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m22553e.f46c = i3 + 1;
        this.f14b += 2;
        return this;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: c */
    public C0008f mo22494c(long j) {
        return new C0008f(mo22490g(j));
    }

    @Override // p000a.AbstractC0023r, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: d */
    public C0005c mo22505t() {
        return this;
    }

    /* renamed from: d */
    public C0005c mo22510g(int i) {
        C0020o m22553e = m22553e(4);
        byte[] bArr = m22553e.f44a;
        int i2 = m22553e.f46c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m22553e.f46c = i5 + 1;
        this.f14b += 4;
        return this;
    }

    /* renamed from: d */
    public String m22554d(long j) {
        return m22570a(j, C0027u.f59a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
        if (r0.f48e == false) goto L17;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p000a.C0020o m22553e(int r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = 1
            if (r0 < r1) goto Lc
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 <= r1) goto L14
        Lc:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        L14:
            r0 = r3
            a.o r0 = r0.f13a
            if (r0 != 0) goto L41
            r0 = r3
            a.o r1 = p000a.C0021p.m22476a()
            r0.f13a = r1
            r0 = r3
            a.o r0 = r0.f13a
            r5 = r0
            r0 = r3
            a.o r0 = r0.f13a
            r6 = r0
            r0 = r3
            a.o r0 = r0.f13a
            r7 = r0
            r0 = r6
            r1 = r7
            r0.f50g = r1
            r0 = r5
            r1 = r7
            r0.f49f = r1
        L3e:
            r0 = r7
            return r0
        L41:
            r0 = r3
            a.o r0 = r0.f13a
            a.o r0 = r0.f50g
            r6 = r0
            r0 = r6
            int r0 = r0.f46c
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L5f
            r0 = r6
            r7 = r0
            r0 = r6
            boolean r0 = r0.f48e
            if (r0 != 0) goto L3e
        L5f:
            r0 = r6
            a.o r1 = p000a.C0021p.m22476a()
            a.o r0 = r0.m22480a(r1)
            r7 = r0
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.C0005c.m22553e(int):a.o");
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // p000a.AbstractC0007e
    /* renamed from: e */
    public String mo22492e(long j) {
        C0005c c0005c;
        String m22550f;
        char c = 65535;
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        if (j != Long.MAX_VALUE) {
            c = j + 1;
        }
        long m22573a = m22573a((byte) 10, 0L, c);
        if (m22573a != -1) {
            m22550f = m22550f(m22573a);
        } else if (c >= m22562b() || m22560b(c - 1) != 13 || m22560b((long) c) != 10) {
            m22569a(new C0005c(), 0L, Math.min(32L, m22562b()));
            throw new EOFException("\\n not found: limit=" + Math.min(m22562b(), j) + " content=" + c0005c.m22547m().mo22464e() + (char) 8230);
        } else {
            m22550f = m22550f((long) c);
        }
        return m22550f;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: e */
    public boolean mo22493e() {
        return this.f14b == 0;
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public boolean equals(Object obj) {
        boolean z;
        char c = 0;
        if (this != obj) {
            if (obj instanceof C0005c) {
                C0005c c0005c = (C0005c) obj;
                if (this.f14b == c0005c.f14b) {
                    if (this.f14b != 0) {
                        C0020o c0020o = this.f13a;
                        C0020o c0020o2 = c0005c.f13a;
                        int i = c0020o.f45b;
                        int i2 = c0020o2.f45b;
                        loop0: while (true) {
                            if (c >= this.f14b) {
                                z = true;
                                break;
                            }
                            long min = Math.min(c0020o.f46c - i, c0020o2.f46c - i2);
                            int i3 = 0;
                            while (i3 < min) {
                                if (c0020o.f44a[i] != c0020o2.f44a[i2]) {
                                    z = false;
                                    break loop0;
                                }
                                i3++;
                                i2++;
                                i++;
                            }
                            int i4 = i;
                            C0020o c0020o3 = c0020o;
                            if (i == c0020o.f46c) {
                                c0020o3 = c0020o.f49f;
                                i4 = c0020o3.f45b;
                            }
                            int i5 = i2;
                            C0020o c0020o4 = c0020o2;
                            if (i2 == c0020o2.f46c) {
                                c0020o4 = c0020o2.f49f;
                                i5 = c0020o4.f45b;
                            }
                            c += min;
                            i2 = i5;
                            i = i4;
                            c0020o2 = c0020o4;
                            c0020o = c0020o3;
                        }
                    } else {
                        z = true;
                    }
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: f */
    public long m22552f() {
        char c;
        ?? r0 = this.f14b;
        if (r0 == 0) {
            c = 0;
        } else {
            C0020o c0020o = this.f13a.f50g;
            c = r0;
            if (c0020o.f46c < 8192) {
                c = r0;
                if (c0020o.f48e) {
                    c = r0 - (c0020o.f46c - c0020o.f45b);
                }
            }
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [a.f] */
    /* renamed from: f */
    public C0008f m22551f(int i) {
        return i == 0 ? C0008f.f16b : new C0022q(this, i);
    }

    /* renamed from: f */
    public String m22550f(long j) {
        String m22554d;
        if (j <= 0 || m22560b(j - 1) != 13) {
            m22554d = m22554d(j);
            mo22488h(1L);
        } else {
            m22554d = m22554d(j - 1);
            mo22488h(2L);
        }
        return m22554d;
    }

    @Override // p000a.AbstractC0006d, p000a.AbstractC0023r, java.io.Flushable
    public void flush() {
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: g */
    public byte mo22491g() {
        if (this.f14b == 0) {
            throw new IllegalStateException("size == 0");
        }
        C0020o c0020o = this.f13a;
        int i = c0020o.f45b;
        int i2 = c0020o.f46c;
        byte[] bArr = c0020o.f44a;
        int i3 = i + 1;
        byte b = bArr[i];
        this.f14b--;
        if (i3 == i2) {
            this.f13a = c0020o.m22478b();
            C0021p.m22475a(c0020o);
        } else {
            c0020o.f45b = i3;
        }
        return b;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: g */
    public byte[] mo22490g(long j) {
        C0027u.m22450a(this.f14b, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[(int) j];
        mo22497a(bArr);
        return bArr;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: h */
    public short mo22489h() {
        short s;
        if (this.f14b < 2) {
            throw new IllegalStateException("size < 2: " + this.f14b);
        }
        C0020o c0020o = this.f13a;
        int i = c0020o.f45b;
        int i2 = c0020o.f46c;
        if (i2 - i < 2) {
            s = (short) (((mo22491g() & 255) << 8) | (mo22491g() & 255));
        } else {
            byte[] bArr = c0020o.f44a;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            this.f14b -= 2;
            if (i4 == i2) {
                this.f13a = c0020o.m22478b();
                C0021p.m22475a(c0020o);
            } else {
                c0020o.f45b = i4;
            }
            s = (short) (((b & 255) << 8) | (b2 & 255));
        }
        return s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override // p000a.AbstractC0007e
    /* renamed from: h */
    public void mo22488h(long j) {
        while (j > 0) {
            if (this.f13a == null) {
                throw new EOFException();
            }
            int min = (int) Math.min((long) j, this.f13a.f46c - this.f13a.f45b);
            this.f14b -= min;
            ?? r0 = j - min;
            C0020o c0020o = this.f13a;
            c0020o.f45b = min + c0020o.f45b;
            j = r0;
            if (this.f13a.f45b == this.f13a.f46c) {
                C0020o c0020o2 = this.f13a;
                this.f13a = c0020o2.m22478b();
                C0021p.m22475a(c0020o2);
                j = r0;
            }
        }
    }

    public int hashCode() {
        int i;
        C0020o c0020o;
        C0020o c0020o2 = this.f13a;
        if (c0020o2 == null) {
            i = 0;
        } else {
            int i2 = 1;
            do {
                int i3 = c0020o2.f46c;
                i = i2;
                for (int i4 = c0020o2.f45b; i4 < i3; i4++) {
                    i = (i * 31) + c0020o2.f44a[i4];
                }
                c0020o = c0020o2.f49f;
                i2 = i;
                c0020o2 = c0020o;
            } while (c0020o != this.f13a);
        }
        return i;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: i */
    public int mo22487i() {
        int i;
        if (this.f14b < 4) {
            throw new IllegalStateException("size < 4: " + this.f14b);
        }
        C0020o c0020o = this.f13a;
        int i2 = c0020o.f45b;
        int i3 = c0020o.f46c;
        if (i3 - i2 < 4) {
            i = ((mo22491g() & 255) << 24) | ((mo22491g() & 255) << 16) | ((mo22491g() & 255) << 8) | (mo22491g() & 255);
        } else {
            byte[] bArr = c0020o.f44a;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            int i5 = i4 + 1;
            byte b2 = bArr[i4];
            int i6 = i5 + 1;
            byte b3 = bArr[i5];
            int i7 = i6 + 1;
            i = ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (bArr[i6] & 255);
            this.f14b -= 4;
            if (i7 == i3) {
                this.f13a = c0020o.m22478b();
                C0021p.m22475a(c0020o);
            } else {
                c0020o.f45b = i7;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* renamed from: i */
    public C0005c mo22506l(long j) {
        boolean z;
        char c;
        C0005c c0005c;
        if (j == 0) {
            c0005c = mo22508i(48);
        } else {
            if (j < 0) {
                char c2 = -j;
                if (c2 < 0) {
                    c0005c = mo22513b("-9223372036854775808");
                } else {
                    z = true;
                    c = c2;
                }
            } else {
                z = false;
                c = j;
            }
            int i = (c == true ? 1 : 0) < 100000000 ? c < 10000 ? c < 100 ? c < 10 ? 1 : 2 : c < 1000 ? 3 : 4 : c < 1000000 ? c < 100000 ? 5 : 6 : c < 10000000 ? 7 : 8 : c < 1000000000000L ? c < 10000000000L ? c < 1000000000 ? 9 : 10 : c < 100000000000L ? 11 : 12 : c < 1000000000000000L ? c < 10000000000000L ? 13 : c < 100000000000000L ? 14 : 15 : c < 100000000000000000L ? c < 10000000000000000L ? 16 : 17 : c < 1000000000000000000L ? 18 : 19;
            int i2 = i;
            if (z) {
                i2 = i + 1;
            }
            C0020o m22553e = m22553e(i2);
            byte[] bArr = m22553e.f44a;
            int i3 = m22553e.f46c + i2;
            char c3 = c;
            while ((c3 == 1 ? 1 : 0) != 0) {
                i3--;
                bArr[i3] = f12c[(int) (c3 % '\n')];
                c3 /= '\n';
            }
            if (z) {
                bArr[i3 - 1] = (byte) 45;
            }
            m22553e.f46c += i2;
            this.f14b = i2 + this.f14b;
            c0005c = this;
        }
        return c0005c;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* renamed from: j */
    public C0005c mo22507k(long j) {
        C0005c c0005c;
        if (j == 0) {
            c0005c = mo22508i(48);
        } else {
            int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
            C0020o m22553e = m22553e(numberOfTrailingZeros);
            byte[] bArr = m22553e.f44a;
            int i = m22553e.f46c;
            ?? r9 = j;
            for (int i2 = (m22553e.f46c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
                bArr[i2] = f12c[(int) (15 & r9)];
                r9 >>>= 4;
            }
            m22553e.f46c += numberOfTrailingZeros;
            this.f14b = numberOfTrailingZeros + this.f14b;
            c0005c = this;
        }
        return c0005c;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: j */
    public short mo22486j() {
        return C0027u.m22448a(mo22489h());
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: k */
    public int mo22485k() {
        return C0027u.m22451a(mo22487i());
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0115, code lost:
        r6.f14b -= r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0121, code lost:
        return r9;
     */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    @Override // p000a.AbstractC0007e
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo22484l() {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.C0005c.mo22484l():long");
    }

    /* renamed from: m */
    public C0008f m22547m() {
        return new C0008f(m22545p());
    }

    /* renamed from: n */
    public String m22546n() {
        try {
            return m22570a(this.f14b, C0027u.f59a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: o */
    public String mo22483o() {
        return mo22492e(Long.MAX_VALUE);
    }

    /* renamed from: p */
    public byte[] m22545p() {
        try {
            return mo22490g(this.f14b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: q */
    public void m22544q() {
        try {
            mo22488h(this.f14b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: r */
    public C0005c clone() {
        C0005c c0005c = new C0005c();
        if (this.f14b != 0) {
            c0005c.f13a = this.f13a.m22482a();
            C0020o c0020o = c0005c.f13a;
            C0020o c0020o2 = c0005c.f13a;
            C0020o c0020o3 = c0005c.f13a;
            c0020o2.f50g = c0020o3;
            c0020o.f49f = c0020o3;
            C0020o c0020o4 = this.f13a.f49f;
            while (true) {
                C0020o c0020o5 = c0020o4;
                if (c0020o5 == this.f13a) {
                    break;
                }
                c0005c.f13a.f50g.m22480a(c0020o5.m22482a());
                c0020o4 = c0020o5.f49f;
            }
            c0005c.f14b = this.f14b;
        }
        return c0005c;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        int i;
        C0020o c0020o = this.f13a;
        if (c0020o == null) {
            i = -1;
        } else {
            int min = Math.min(byteBuffer.remaining(), c0020o.f46c - c0020o.f45b);
            byteBuffer.put(c0020o.f44a, c0020o.f45b, min);
            c0020o.f45b += min;
            this.f14b -= min;
            i = min;
            if (c0020o.f45b == c0020o.f46c) {
                this.f13a = c0020o.m22478b();
                C0021p.m22475a(c0020o);
                i = min;
            }
        }
        return i;
    }

    /* renamed from: s */
    public C0008f m22542s() {
        if (this.f14b > 2147483647L) {
            throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f14b);
        }
        return m22551f((int) this.f14b);
    }

    public String toString() {
        return m22542s().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            C0020o m22553e = m22553e(1);
            int min = Math.min(i, 8192 - m22553e.f46c);
            byteBuffer.get(m22553e.f44a, m22553e.f46c, min);
            i -= min;
            m22553e.f46c = min + m22553e.f46c;
        }
        this.f14b += remaining;
        return remaining;
    }
}
