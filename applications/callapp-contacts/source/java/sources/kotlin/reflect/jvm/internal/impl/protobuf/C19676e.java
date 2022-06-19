package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/e.class */
public final class C19676e {

    /* renamed from: a */
    final byte[] f65813a;

    /* renamed from: b */
    int f65814b;

    /* renamed from: c */
    int f65815c;

    /* renamed from: d */
    int f65816d;

    /* renamed from: e */
    int f65817e;

    /* renamed from: f */
    private final boolean f65818f;

    /* renamed from: g */
    private int f65819g;

    /* renamed from: h */
    private final InputStream f65820h;

    /* renamed from: i */
    private int f65821i;

    /* renamed from: j */
    private boolean f65822j;

    /* renamed from: k */
    private int f65823k;

    /* renamed from: l */
    private int f65824l;

    /* renamed from: m */
    private int f65825m;

    /* renamed from: n */
    private AbstractC19677a f65826n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/e$a.class */
    public interface AbstractC19677a {
    }

    private C19676e(InputStream inputStream) {
        this.f65822j = false;
        this.f65824l = Integer.MAX_VALUE;
        this.f65817e = 64;
        this.f65825m = 67108864;
        this.f65826n = null;
        this.f65813a = new byte[4096];
        this.f65814b = 0;
        this.f65815c = 0;
        this.f65823k = 0;
        this.f65820h = inputStream;
        this.f65818f = false;
    }

    private C19676e(C19702o c19702o) {
        this.f65822j = false;
        this.f65824l = Integer.MAX_VALUE;
        this.f65817e = 64;
        this.f65825m = 67108864;
        this.f65826n = null;
        this.f65813a = c19702o.f65870d;
        int mo1663b = c19702o.mo1663b();
        this.f65815c = mo1663b;
        this.f65814b = mo1663b + c19702o.mo1649a();
        this.f65823k = -this.f65815c;
        this.f65820h = null;
        this.f65818f = true;
    }

    /* renamed from: a */
    public static long m1756a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public static C19676e m1755a(InputStream inputStream) {
        return new C19676e(inputStream);
    }

    /* renamed from: a */
    public static C19676e m1754a(C19702o c19702o) {
        C19676e c19676e = new C19676e(c19702o);
        try {
            c19676e.m1751b(c19702o.mo1649a());
            return c19676e;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    private void m1745e(int i) throws IOException {
        if (m1743f(i)) {
            return;
        }
        throw InvalidProtocolBufferException.m1788a();
    }

    /* renamed from: f */
    private boolean m1743f(int i) throws IOException {
        do {
            int i2 = this.f65815c;
            int i3 = this.f65814b;
            if (i2 + i <= i3) {
                StringBuilder sb = new StringBuilder(77);
                sb.append("refillBuffer() called when ");
                sb.append(i);
                sb.append(" bytes were already available in buffer");
                throw new IllegalStateException(sb.toString());
            } else if (this.f65823k + i2 + i > this.f65824l || this.f65820h == null) {
                return false;
            } else {
                if (i2 > 0) {
                    if (i3 > i2) {
                        byte[] bArr = this.f65813a;
                        System.arraycopy(bArr, i2, bArr, 0, i3 - i2);
                    }
                    this.f65823k += i2;
                    this.f65814b -= i2;
                    this.f65815c = 0;
                }
                InputStream inputStream = this.f65820h;
                byte[] bArr2 = this.f65813a;
                int i4 = this.f65814b;
                int read = inputStream.read(bArr2, i4, bArr2.length - i4);
                if (read == 0 || read < -1 || read > this.f65813a.length) {
                    StringBuilder sb2 = new StringBuilder(102);
                    sb2.append("InputStream#read(byte[]) returned invalid result: ");
                    sb2.append(read);
                    sb2.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb2.toString());
                } else if (read <= 0) {
                    return false;
                } else {
                    this.f65814b += read;
                    if ((this.f65823k + i) - this.f65825m > 0) {
                        throw InvalidProtocolBufferException.m1781h();
                    }
                    m1737j();
                }
            }
        } while (this.f65814b < i);
        return true;
    }

    /* renamed from: g */
    private void m1741g(int i) throws IOException {
        int i2 = this.f65814b;
        int i3 = this.f65815c;
        if (i > i2 - i3 || i < 0) {
            m1739h(i);
        } else {
            this.f65815c = i3 + i;
        }
    }

    /* renamed from: h */
    private void m1739h(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f65823k;
            int i3 = this.f65815c;
            int i4 = this.f65824l;
            if (i2 + i3 + i > i4) {
                m1741g((i4 - i2) - i3);
                throw InvalidProtocolBufferException.m1788a();
            }
            int i5 = this.f65814b;
            int i6 = i5 - i3;
            this.f65815c = i5;
            m1745e(1);
            while (true) {
                int i7 = i - i6;
                int i8 = this.f65814b;
                if (i7 <= i8) {
                    this.f65815c = i7;
                    return;
                }
                i6 += i8;
                this.f65815c = i8;
                m1745e(1);
            }
        } else {
            throw InvalidProtocolBufferException.m1787b();
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: i */
    private long m1738i() throws IOException {
        byte m1735l;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m1735l & Byte.MAX_VALUE) << i;
            if ((m1735l() & 128) == 0) {
                return c;
            }
        }
        throw InvalidProtocolBufferException.m1786c();
    }

    /* renamed from: j */
    private void m1737j() {
        int i = this.f65814b + this.f65819g;
        this.f65814b = i;
        int i2 = this.f65823k + i;
        int i3 = this.f65824l;
        if (i2 <= i3) {
            this.f65819g = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f65819g = i4;
        this.f65814b = i - i4;
    }

    /* renamed from: k */
    private boolean m1736k() throws IOException {
        return this.f65815c == this.f65814b && !m1743f(1);
    }

    /* renamed from: l */
    private byte m1735l() throws IOException {
        if (this.f65815c == this.f65814b) {
            m1745e(1);
        }
        byte[] bArr = this.f65813a;
        int i = this.f65815c;
        this.f65815c = i + 1;
        return bArr[i];
    }

    /* renamed from: a */
    public final int m1759a() throws IOException {
        if (m1736k()) {
            this.f65821i = 0;
            return 0;
        }
        int m1748d = m1748d();
        this.f65821i = m1748d;
        if (C19728x.m1589b(m1748d) == 0) {
            throw InvalidProtocolBufferException.m1785d();
        }
        return this.f65821i;
    }

    /* renamed from: a */
    public final <T extends AbstractC19705p> T m1753a(AbstractC19708r<T> abstractC19708r, C19678f c19678f) throws IOException {
        int m1748d = m1748d();
        if (this.f65816d < this.f65817e) {
            int m1751b = m1751b(m1748d);
            this.f65816d++;
            T mo1651a = abstractC19708r.mo1651a(this, c19678f);
            m1758a(0);
            this.f65816d--;
            m1749c(m1751b);
            return mo1651a;
        }
        throw InvalidProtocolBufferException.m1782g();
    }

    /* renamed from: a */
    public final void m1758a(int i) throws InvalidProtocolBufferException {
        if (this.f65821i == i) {
            return;
        }
        throw InvalidProtocolBufferException.m1784e();
    }

    /* renamed from: a */
    public final boolean m1757a(int i, CodedOutputStream codedOutputStream) throws IOException {
        int m1759a;
        int m1591a = C19728x.m1591a(i);
        if (m1591a == 0) {
            long m1746e = m1746e();
            codedOutputStream.m1795e(i);
            codedOutputStream.m1801c(m1746e);
            return true;
        } else if (m1591a == 1) {
            long m1742g = m1742g();
            codedOutputStream.m1795e(i);
            codedOutputStream.m1793e(m1742g);
            return true;
        } else if (m1591a == 2) {
            AbstractC19673d m1750c = m1750c();
            codedOutputStream.m1795e(i);
            codedOutputStream.m1821a(m1750c);
            return true;
        } else if (m1591a != 3) {
            if (m1591a == 4) {
                return false;
            }
            if (m1591a != 5) {
                throw InvalidProtocolBufferException.m1783f();
            }
            int m1744f = m1744f();
            codedOutputStream.m1795e(i);
            codedOutputStream.m1790g(m1744f);
            return true;
        } else {
            codedOutputStream.m1795e(i);
            do {
                m1759a = m1759a();
                if (m1759a == 0) {
                    break;
                }
            } while (m1757a(m1759a, codedOutputStream));
            int m1590a = C19728x.m1590a(C19728x.m1589b(i), 4);
            m1758a(m1590a);
            codedOutputStream.m1795e(m1590a);
            return true;
        }
    }

    /* renamed from: b */
    public final int m1751b(int i) throws InvalidProtocolBufferException {
        if (i >= 0) {
            int i2 = i + this.f65823k + this.f65815c;
            int i3 = this.f65824l;
            if (i2 > i3) {
                throw InvalidProtocolBufferException.m1788a();
            }
            this.f65824l = i2;
            m1737j();
            return i3;
        }
        throw InvalidProtocolBufferException.m1787b();
    }

    /* renamed from: b */
    public final boolean m1752b() throws IOException {
        return m1746e() != 0;
    }

    /* renamed from: c */
    public final AbstractC19673d m1750c() throws IOException {
        int m1748d = m1748d();
        int i = this.f65814b;
        int i2 = this.f65815c;
        if (m1748d > i - i2 || m1748d <= 0) {
            return m1748d == 0 ? AbstractC19673d.f65805b : new C19702o(m1747d(m1748d));
        }
        C19670c m1767a = (!this.f65818f || !this.f65822j) ? AbstractC19673d.m1767a(this.f65813a, i2, m1748d) : new C19670c(this.f65813a, i2, m1748d);
        this.f65815c += m1748d;
        return m1767a;
    }

    /* renamed from: c */
    public final void m1749c(int i) {
        this.f65824l = i;
        m1737j();
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: d */
    public final int m1748d() throws IOException {
        int i;
        int i2;
        int i3;
        char c;
        int i4 = this.f65815c;
        int i5 = this.f65814b;
        if (i5 != i4) {
            byte[] bArr = this.f65813a;
            int i6 = i4 + 1;
            byte b = bArr[i4];
            if (b >= 0) {
                this.f65815c = i6;
                return b;
            } else if (i5 - i6 >= 9) {
                int i7 = i6 + 1;
                int i8 = b ^ (bArr[i6] << 7);
                char c2 = i8;
                if (c2 >= 0) {
                    i = i7 + 1;
                    int i9 = i8 ^ (bArr[i7] << 14);
                    long j = i9;
                    if (j >= 0) {
                        i2 = (int) (16256 ^ j);
                    } else {
                        int i10 = i + 1;
                        c2 = i9 ^ (bArr[i] << 21);
                        if (c2 < 0) {
                            c = 16256;
                            i = i10;
                        } else {
                            int i11 = i10 + 1;
                            byte b2 = bArr[i10];
                            int i12 = (int) ((i3 ^ (b2 << 28)) ^ 266354560);
                            i2 = i12;
                            i = i11;
                            if (b2 < 0) {
                                int i13 = i11 + 1;
                                i2 = i12;
                                i = i13;
                                if (bArr[i11] < 0) {
                                    int i14 = i13 + 1;
                                    i2 = i12;
                                    i = i14;
                                    if (bArr[i13] < 0) {
                                        int i15 = i14 + 1;
                                        i2 = i12;
                                        i = i15;
                                        if (bArr[i14] < 0) {
                                            int i16 = i15 + 1;
                                            i2 = i12;
                                            i = i16;
                                            if (bArr[i15] < 0) {
                                                i = i16 + 1;
                                                if (bArr[i16] >= 0) {
                                                    i2 = i12;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.f65815c = i;
                    return i2;
                }
                c = 65408;
                i = i7;
                i2 = (int) (c2 ^ c);
                this.f65815c = i;
                return i2;
            }
        }
        return (int) m1738i();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0104, code lost:
        r8 = r8 - r0;
        r0.add(r0);
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m1747d(int r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.C19676e.m1747d(int):byte[]");
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* renamed from: e */
    public final long m1746e() throws IOException {
        char c;
        char c2;
        char c3;
        int i = this.f65815c;
        int i2 = this.f65814b;
        if (i2 != i) {
            byte[] bArr = this.f65813a;
            int i3 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.f65815c = i3;
                return b;
            } else if (i2 - i3 >= 9) {
                int i4 = i3 + 1;
                char c4 = b ^ (bArr[i3] << 7);
                if (c4 >= 0) {
                    int i5 = i4 + 1;
                    char c5 = c4 ^ (bArr[i4] << 14);
                    if (c5 >= 0) {
                        c3 = 16256;
                        i4 = i5;
                    } else {
                        int i6 = i5 + 1;
                        c4 = c5 ^ (bArr[i5] << 21);
                        if (c4 < 0) {
                            c2 = 16256;
                            i4 = i6;
                        } else {
                            i4 = i6 + 1;
                            c5 = c4 ^ (bArr[i6] << 28);
                            if (c5 >= 0) {
                                c3 = 16256;
                            } else {
                                int i7 = i4 + 1;
                                c4 = c5 ^ (bArr[i4] << 35);
                                if (c4 < 0) {
                                    c2 = 16256;
                                    i4 = i7;
                                } else {
                                    i4 = i7 + 1;
                                    c5 = c4 ^ (bArr[i7] << 42);
                                    if (c5 >= 0) {
                                        c3 = 16256;
                                    } else {
                                        int i8 = i4 + 1;
                                        c4 = c5 ^ (bArr[i4] << 49);
                                        if (c4 >= 0) {
                                            i4 = i8 + 1;
                                            c = (c4 ^ (bArr[i8] << 56)) ^ 71499008037633920L;
                                            if (c < 0) {
                                                int i9 = i4 + 1;
                                                if (bArr[i4] >= 0) {
                                                    i4 = i9;
                                                }
                                            }
                                            this.f65815c = i4;
                                            return c;
                                        }
                                        c2 = 16256;
                                        i4 = i8;
                                    }
                                }
                            }
                        }
                    }
                    c = c5 ^ c3;
                    this.f65815c = i4;
                    return c;
                }
                c2 = 65408;
                c = c4 ^ c2;
                this.f65815c = i4;
                return c;
            }
        }
        return m1738i();
    }

    /* renamed from: f */
    public final int m1744f() throws IOException {
        int i = this.f65815c;
        int i2 = i;
        if (this.f65814b - i < 4) {
            m1745e(4);
            i2 = this.f65815c;
        }
        byte[] bArr = this.f65813a;
        this.f65815c = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* renamed from: g */
    public final long m1742g() throws IOException {
        int i = this.f65815c;
        int i2 = i;
        if (this.f65814b - i < 8) {
            m1745e(8);
            i2 = this.f65815c;
        }
        byte[] bArr = this.f65813a;
        this.f65815c = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    /* renamed from: h */
    public final int m1740h() {
        int i = this.f65824l;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - (this.f65823k + this.f65815c);
    }
}
