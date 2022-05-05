package b;

import com.asus.updatesdk.BuildConfig;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:b/c.class */
public final class c implements d, e, Cloneable {
    private static final byte[] c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a  reason: collision with root package name */
    n f317a;

    /* renamed from: b  reason: collision with root package name */
    public long f318b;

    private String a(long j, Charset charset) {
        String str;
        s.a(this.f318b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        } else {
            if (j == 0) {
                str = BuildConfig.FLAVOR;
            } else {
                n nVar = this.f317a;
                if (nVar.f340b + j > nVar.c) {
                    str = new String(f(j), charset);
                } else {
                    String str2 = new String(nVar.f339a, nVar.f340b, (int) j, charset);
                    nVar.f340b = (int) (nVar.f340b + j);
                    this.f318b -= j;
                    str = str2;
                    if (nVar.f340b == nVar.c) {
                        this.f317a = nVar.a();
                        o.a(nVar);
                        str = str2;
                    }
                }
            }
            return str;
        }
    }

    private void c(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            int a2 = a(bArr, i, bArr.length - i);
            if (a2 == -1) {
                throw new EOFException();
            }
            i += a2;
        }
    }

    private String j(long j) {
        return a(j, s.f345a);
    }

    private String q() {
        try {
            return a(this.f318b, s.f345a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final int a(byte[] bArr, int i, int i2) {
        int i3;
        s.a(bArr.length, i, i2);
        n nVar = this.f317a;
        if (nVar == null) {
            i3 = -1;
        } else {
            int min = Math.min(i2, nVar.c - nVar.f340b);
            System.arraycopy(nVar.f339a, nVar.f340b, bArr, i, min);
            nVar.f340b += min;
            this.f318b -= min;
            i3 = min;
            if (nVar.f340b == nVar.c) {
                this.f317a = nVar.a();
                o.a(nVar);
                i3 = min;
            }
        }
        return i3;
    }

    @Override // b.e
    public final long a(byte b2) {
        return a(b2, 0L);
    }

    public final long a(byte b2, long j) {
        long j2;
        if (j < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        n nVar = this.f317a;
        if (nVar != null) {
            long j3 = 0;
            loop0: while (true) {
                int i = nVar.c - nVar.f340b;
                if (j >= i) {
                    j -= i;
                } else {
                    byte[] bArr = nVar.f339a;
                    long j4 = nVar.c;
                    for (long j5 = nVar.f340b + j; j5 < j4; j5++) {
                        if (bArr[(int) j5] == b2) {
                            j2 = (j3 + j5) - nVar.f340b;
                            break loop0;
                        }
                    }
                    j = 0;
                }
                j3 += i;
                n nVar2 = nVar.f;
                nVar = nVar2;
                if (nVar2 == this.f317a) {
                    j2 = -1;
                    break;
                }
            }
        } else {
            j2 = -1;
        }
        return j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r7v0, types: [b.c] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // b.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(b.c r7, long r8) {
        /*
            r6 = this;
            r0 = r7
            if (r0 != 0) goto L_0x000e
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "sink == null"
            r1.<init>(r2)
            throw r0
        L_0x000e:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002c
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = r2
            java.lang.String r4 = "byteCount < 0: "
            r3.<init>(r4)
            r3 = r8
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x002c:
            r0 = r6
            long r0 = r0.f318b
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003d
            r0 = -1
            r10 = r0
        L_0x003a:
            r0 = r10
            return r0
        L_0x003d:
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = r6
            long r1 = r1.f318b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004f
            r0 = r6
            long r0 = r0.f318b
            r10 = r0
        L_0x004f:
            r0 = r7
            r1 = r6
            r2 = r10
            r0.a_(r1, r2)
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: b.c.a(b.c, long):long");
    }

    @Override // b.d
    public final long a(q qVar) {
        if (qVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long a2 = qVar.a(this, 2048L);
            if (a2 == -1) {
                return j;
            }
            j += a2;
        }
    }

    /* renamed from: a */
    public final c g(int i) {
        n d = d(1);
        byte[] bArr = d.f339a;
        int i2 = d.c;
        d.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f318b++;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final b.c a(b.c r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.c.a(b.c, long, long):b.c");
    }

    /* renamed from: a */
    public final c b(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        c(fVar.c, 0, fVar.c.length);
        return this;
    }

    /* renamed from: a */
    public final c b(String str) {
        char charAt;
        int length = str.length();
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (length < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + length + " < 0");
        } else if (length > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + length + " > " + str.length());
        } else {
            int i = 0;
            while (i < length) {
                char charAt2 = str.charAt(i);
                if (charAt2 < 128) {
                    n d = d(1);
                    byte[] bArr = d.f339a;
                    int i2 = d.c - i;
                    int min = Math.min(length, 2048 - i2);
                    i++;
                    bArr[i + i2] = (byte) charAt2;
                    while (i < min && (charAt = str.charAt(i)) < 128) {
                        bArr[i + i2] = (byte) charAt;
                        i++;
                    }
                    int i3 = (i + i2) - d.c;
                    d.c += i3;
                    this.f318b += i3;
                } else if (charAt2 < 2048) {
                    g((charAt2 >> 6) | 192);
                    g((charAt2 & '?') | 128);
                    i++;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    g((charAt2 >> '\f') | 224);
                    g(((charAt2 >> 6) & 63) | 128);
                    g((charAt2 & '?') | 128);
                    i++;
                } else {
                    char charAt3 = i + 1 < length ? str.charAt(i + 1) : (char) 0;
                    if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                        g(63);
                        i++;
                    } else {
                        int i4 = ((charAt3 & 9215) | ((charAt2 & 10239) << 10)) + 65536;
                        g((i4 >> 18) | 240);
                        g(((i4 >> 12) & 63) | 128);
                        g(((i4 >> 6) & 63) | 128);
                        g((i4 & 63) | 128);
                        i += 2;
                    }
                }
            }
            return this;
        }
    }

    /* renamed from: a */
    public final c b(byte[] bArr) {
        if (bArr != null) {
            return c(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // b.p
    public final r a() {
        return r.f343b;
    }

    public final String a(Charset charset) {
        try {
            return a(this.f318b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // b.e
    public final void a(long j) {
        if (this.f318b < j) {
            throw new EOFException();
        }
    }

    @Override // b.p
    public final void a_(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (cVar == this) {
            throw new IllegalArgumentException("source == this");
        } else {
            s.a(cVar.f318b, 0L, j);
            while (j > 0) {
                if (j < cVar.f317a.c - cVar.f317a.f340b) {
                    n nVar = this.f317a != null ? this.f317a.g : null;
                    if (nVar != null && nVar.e) {
                        if ((nVar.c + j) - (nVar.d ? 0 : nVar.f340b) <= 2048) {
                            cVar.f317a.a(nVar, (int) j);
                            cVar.f318b -= j;
                            this.f318b += j;
                            return;
                        }
                    }
                    n nVar2 = cVar.f317a;
                    int i = (int) j;
                    if (i <= 0 || i > nVar2.c - nVar2.f340b) {
                        throw new IllegalArgumentException();
                    }
                    n nVar3 = new n(nVar2);
                    nVar3.c = nVar3.f340b + i;
                    nVar2.f340b = i + nVar2.f340b;
                    nVar2.g.a(nVar3);
                    cVar.f317a = nVar3;
                }
                n nVar4 = cVar.f317a;
                long j2 = nVar4.c - nVar4.f340b;
                cVar.f317a = nVar4.a();
                if (this.f317a == null) {
                    this.f317a = nVar4;
                    n nVar5 = this.f317a;
                    n nVar6 = this.f317a;
                    n nVar7 = this.f317a;
                    nVar6.g = nVar7;
                    nVar5.f = nVar7;
                } else {
                    n a2 = this.f317a.g.a(nVar4);
                    if (a2.g == a2) {
                        throw new IllegalStateException();
                    } else if (a2.g.e) {
                        int i2 = a2.c - a2.f340b;
                        if (i2 <= (a2.g.d ? 0 : a2.g.f340b) + (2048 - a2.g.c)) {
                            a2.a(a2.g, i2);
                            a2.a();
                            o.a(a2);
                        }
                    }
                }
                cVar.f318b -= j2;
                this.f318b += j2;
                j -= j2;
            }
        }
    }

    @Override // b.d, b.e
    public final c b() {
        return this;
    }

    /* renamed from: b */
    public final c f(int i) {
        n d = d(2);
        byte[] bArr = d.f339a;
        int i2 = d.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        d.c = i3 + 1;
        this.f318b += 2;
        return this;
    }

    /* renamed from: b */
    public final c c(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        s.a(bArr.length, i, i2);
        int i3 = i + i2;
        while (i < i3) {
            n d = d(1);
            int min = Math.min(i3 - i, 2048 - d.c);
            System.arraycopy(bArr, i, d.f339a, d.c, min);
            i += min;
            d.c = min + d.c;
        }
        this.f318b += i2;
        return this;
    }

    @Override // b.e
    public final boolean b(long j) {
        return this.f318b >= j;
    }

    public final byte c(long j) {
        s.a(this.f318b, j, 1L);
        n nVar = this.f317a;
        while (true) {
            int i = nVar.c - nVar.f340b;
            if (j < i) {
                return nVar.f339a[nVar.f340b + ((int) j)];
            }
            j -= i;
            nVar = nVar.f;
        }
    }

    /* renamed from: c */
    public final c e(int i) {
        n d = d(4);
        byte[] bArr = d.f339a;
        int i2 = d.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        d.c = i5 + 1;
        this.f318b += 4;
        return this;
    }

    @Override // b.d
    public final d c() {
        return this;
    }

    @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // b.e
    public final f d(long j) {
        return new f(f(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
        if (r0.e == false) goto L_0x005e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final b.n d(int r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 <= 0) goto L_0x000b
            r0 = r4
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 <= r1) goto L_0x0013
        L_0x000b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0013:
            r0 = r3
            b.n r0 = r0.f317a
            if (r0 != 0) goto L_0x0040
            r0 = r3
            b.n r1 = b.o.a()
            r0.f317a = r1
            r0 = r3
            b.n r0 = r0.f317a
            r5 = r0
            r0 = r3
            b.n r0 = r0.f317a
            r6 = r0
            r0 = r3
            b.n r0 = r0.f317a
            r7 = r0
            r0 = r6
            r1 = r7
            r0.g = r1
            r0 = r5
            r1 = r7
            r0.f = r1
        L_0x003d:
            r0 = r7
            return r0
        L_0x0040:
            r0 = r3
            b.n r0 = r0.f317a
            b.n r0 = r0.g
            r5 = r0
            r0 = r5
            int r0 = r0.c
            r1 = r4
            int r0 = r0 + r1
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 > r1) goto L_0x005e
            r0 = r5
            r7 = r0
            r0 = r5
            boolean r0 = r0.e
            if (r0 != 0) goto L_0x003d
        L_0x005e:
            r0 = r5
            b.n r1 = b.o.a()
            b.n r0 = r0.a(r1)
            r7 = r0
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: b.c.d(int):b.n");
    }

    @Override // b.e
    public final boolean d() {
        return this.f318b == 0;
    }

    @Override // b.e
    public final byte e() {
        if (this.f318b == 0) {
            throw new IllegalStateException("size == 0");
        }
        n nVar = this.f317a;
        int i = nVar.f340b;
        int i2 = nVar.c;
        byte[] bArr = nVar.f339a;
        int i3 = i + 1;
        byte b2 = bArr[i];
        this.f318b--;
        if (i3 == i2) {
            this.f317a = nVar.a();
            o.a(nVar);
        } else {
            nVar.f340b = i3;
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String e(long j) {
        String j2;
        if (j <= 0 || c(j - 1) != 13) {
            j2 = j(j);
            g(1L);
        } else {
            j2 = j(j - 1);
            g(2L);
        }
        return j2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        long j = 0;
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (this.f318b == cVar.f318b) {
                    if (this.f318b != 0) {
                        n nVar = this.f317a;
                        n nVar2 = cVar.f317a;
                        int i = nVar.f340b;
                        int i2 = nVar2.f340b;
                        loop0: while (true) {
                            if (j >= this.f318b) {
                                z = true;
                                break;
                            }
                            long min = Math.min(nVar.c - i, nVar2.c - i2);
                            int i3 = 0;
                            while (i3 < min) {
                                if (nVar.f339a[i] != nVar2.f339a[i2]) {
                                    z = false;
                                    break loop0;
                                }
                                i3++;
                                i2++;
                                i++;
                            }
                            i = i;
                            nVar = nVar;
                            if (i == nVar.c) {
                                nVar = nVar.f;
                                i = nVar.f340b;
                            }
                            i2 = i2;
                            nVar2 = nVar2;
                            if (i2 == nVar2.c) {
                                nVar2 = nVar2.f;
                                i2 = nVar2.f340b;
                            }
                            j += min;
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

    @Override // b.e
    public final short f() {
        short s;
        if (this.f318b < 2) {
            throw new IllegalStateException("size < 2: " + this.f318b);
        }
        n nVar = this.f317a;
        int i = nVar.f340b;
        int i2 = nVar.c;
        if (i2 - i < 2) {
            s = (short) (((e() & 255) << 8) | (e() & 255));
        } else {
            byte[] bArr = nVar.f339a;
            int i3 = i + 1;
            byte b2 = bArr[i];
            int i4 = i3 + 1;
            byte b3 = bArr[i3];
            this.f318b -= 2;
            if (i4 == i2) {
                this.f317a = nVar.a();
                o.a(nVar);
            } else {
                nVar.f340b = i4;
            }
            s = (short) (((b2 & 255) << 8) | (b3 & 255));
        }
        return s;
    }

    @Override // b.e
    public final byte[] f(long j) {
        s.a(this.f318b, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[(int) j];
        c(bArr);
        return bArr;
    }

    @Override // b.p, java.io.Flushable
    public final void flush() {
    }

    @Override // b.e
    public final int g() {
        int i;
        if (this.f318b < 4) {
            throw new IllegalStateException("size < 4: " + this.f318b);
        }
        n nVar = this.f317a;
        int i2 = nVar.f340b;
        int i3 = nVar.c;
        if (i3 - i2 < 4) {
            i = ((e() & 255) << 24) | ((e() & 255) << 16) | ((e() & 255) << 8) | (e() & 255);
        } else {
            byte[] bArr = nVar.f339a;
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            int i6 = i5 + 1;
            byte b4 = bArr[i5];
            int i7 = i6 + 1;
            i = ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8) | (bArr[i6] & 255);
            this.f318b -= 4;
            if (i7 == i3) {
                this.f317a = nVar.a();
                o.a(nVar);
            } else {
                nVar.f340b = i7;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // b.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(long r7) {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x007c
            r0 = r6
            b.n r0 = r0.f317a
            if (r0 != 0) goto L_0x0015
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0015:
            r0 = r7
            r1 = r6
            b.n r1 = r1.f317a
            int r1 = r1.c
            r2 = r6
            b.n r2 = r2.f317a
            int r2 = r2.f340b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r9 = r0
            r0 = r6
            r1 = r6
            long r1 = r1.f318b
            r2 = r9
            long r2 = (long) r2
            long r1 = r1 - r2
            r0.f318b = r1
            r0 = r7
            r1 = r9
            long r1 = (long) r1
            long r0 = r0 - r1
            r10 = r0
            r0 = r6
            b.n r0 = r0.f317a
            r12 = r0
            r0 = r12
            r1 = r9
            r2 = r12
            int r2 = r2.f340b
            int r1 = r1 + r2
            r0.f340b = r1
            r0 = r10
            r7 = r0
            r0 = r6
            b.n r0 = r0.f317a
            int r0 = r0.f340b
            r1 = r6
            b.n r1 = r1.f317a
            int r1 = r1.c
            if (r0 != r1) goto L_0x0000
            r0 = r6
            b.n r0 = r0.f317a
            r12 = r0
            r0 = r6
            r1 = r12
            b.n r1 = r1.a()
            r0.f317a = r1
            r0 = r12
            b.o.a(r0)
            r0 = r10
            r7 = r0
            goto L_0x0000
        L_0x007c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.c.g(long):void");
    }

    /* renamed from: h */
    public final c i(long j) {
        c cVar;
        if (j == 0) {
            cVar = g(48);
        } else {
            int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
            n d = d(numberOfTrailingZeros);
            byte[] bArr = d.f339a;
            int i = d.c;
            for (int i2 = (d.c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
                bArr[i2] = c[(int) (15 & j)];
                j >>>= 4;
            }
            d.c += numberOfTrailingZeros;
            this.f318b = numberOfTrailingZeros + this.f318b;
            cVar = this;
        }
        return cVar;
    }

    @Override // b.e
    public final short h() {
        return s.a(f());
    }

    public final int hashCode() {
        int i;
        n nVar;
        n nVar2 = this.f317a;
        if (nVar2 == null) {
            i = 0;
        } else {
            i = 1;
            do {
                int i2 = nVar2.c;
                for (int i3 = nVar2.f340b; i3 < i2; i3++) {
                    i = (i * 31) + nVar2.f339a[i3];
                }
                nVar = nVar2.f;
                i = i;
                nVar2 = nVar;
            } while (nVar != this.f317a);
        }
        return i;
    }

    @Override // b.e
    public final int i() {
        return s.a(g());
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x010f, code lost:
        r6.f318b -= r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x011b, code lost:
        return r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012d  */
    @Override // b.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long j() {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.c.j():long");
    }

    public final f k() {
        return new f(m());
    }

    @Override // b.e
    public final String l() {
        long a2 = a((byte) 10, 0L);
        if (a2 != -1) {
            return e(a2);
        }
        c cVar = new c();
        a(cVar, 0L, Math.min(32L, this.f318b));
        throw new EOFException("\\n not found: size=" + this.f318b + " content=" + cVar.k().b() + "...");
    }

    @Override // b.e
    public final byte[] m() {
        try {
            return f(this.f318b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final void n() {
        try {
            g(this.f318b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: o */
    public final c clone() {
        c cVar = new c();
        if (this.f318b != 0) {
            cVar.f317a = new n(this.f317a);
            n nVar = cVar.f317a;
            n nVar2 = cVar.f317a;
            n nVar3 = cVar.f317a;
            nVar2.g = nVar3;
            nVar.f = nVar3;
            for (n nVar4 = this.f317a.f; nVar4 != this.f317a; nVar4 = nVar4.f) {
                cVar.f317a.g.a(new n(nVar4));
            }
            cVar.f318b = this.f318b;
        }
        return cVar;
    }

    @Override // b.d
    public final /* bridge */ /* synthetic */ d p() {
        return this;
    }

    public final String toString() {
        String format;
        if (this.f318b == 0) {
            format = "Buffer[size=0]";
        } else if (this.f318b <= 16) {
            format = String.format("Buffer[size=%s data=%s]", Long.valueOf(this.f318b), clone().k().b());
        } else {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(this.f317a.f339a, this.f317a.f340b, this.f317a.c - this.f317a.f340b);
                for (n nVar = this.f317a.f; nVar != this.f317a; nVar = nVar.f) {
                    instance.update(nVar.f339a, nVar.f340b, nVar.c - nVar.f340b);
                }
                format = String.format("Buffer[size=%s md5=%s]", Long.valueOf(this.f318b), f.a(instance.digest()).b());
            } catch (NoSuchAlgorithmException e) {
                throw new AssertionError();
            }
        }
        return format;
    }
}
