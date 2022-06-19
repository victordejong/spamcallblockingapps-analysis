package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmn.class */
final class dmn extends dmi {

    /* renamed from: e */
    private final InputStream f47229e;

    /* renamed from: f */
    private final byte[] f47230f;

    /* renamed from: g */
    private int f47231g;

    /* renamed from: h */
    private int f47232h;

    /* renamed from: i */
    private int f47233i;

    /* renamed from: j */
    private int f47234j;

    /* renamed from: k */
    private int f47235k;

    /* renamed from: l */
    private int f47236l;

    /* renamed from: m */
    private dmm f47237m;

    /* JADX INFO: Access modifiers changed from: private */
    public dmn(InputStream inputStream, int i) {
        super();
        this.f47236l = Integer.MAX_VALUE;
        this.f47237m = null;
        dnj.m16314a(inputStream, "input");
        this.f47229e = inputStream;
        this.f47230f = new byte[4096];
        this.f47231g = 0;
        this.f47233i = 0;
        this.f47235k = 0;
    }

    /* renamed from: A */
    private final byte m16445A() throws IOException {
        if (this.f47233i == this.f47231g) {
            m16434f(1);
        }
        byte[] bArr = this.f47230f;
        int i = this.f47233i;
        this.f47233i = i + 1;
        return bArr[i];
    }

    /* renamed from: f */
    private final void m16434f(int i) throws IOException {
        if (!m16432g(i)) {
            if (i <= (this.f47218c - this.f47235k) - this.f47233i) {
                throw zzenn.m13635a();
            }
            throw zzenn.m13629g();
        }
    }

    /* renamed from: g */
    private final boolean m16432g(int i) throws IOException {
        while (this.f47233i + i > this.f47231g) {
            int i2 = this.f47218c;
            int i3 = this.f47235k;
            int i4 = this.f47233i;
            if (i > (i2 - i3) - i4 || i3 + i4 + i > this.f47236l) {
                return false;
            }
            if (i4 > 0) {
                int i5 = this.f47231g;
                if (i5 > i4) {
                    byte[] bArr = this.f47230f;
                    System.arraycopy(bArr, i4, bArr, 0, i5 - i4);
                }
                this.f47235k += i4;
                this.f47231g -= i4;
                this.f47233i = 0;
            }
            InputStream inputStream = this.f47229e;
            byte[] bArr2 = this.f47230f;
            int i6 = this.f47231g;
            int read = inputStream.read(bArr2, i6, Math.min(bArr2.length - i6, (this.f47218c - this.f47235k) - this.f47231g));
            if (read == 0 || read < -1 || read > this.f47230f.length) {
                String valueOf = String.valueOf(this.f47229e.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 91);
                sb.append(valueOf);
                sb.append("#read(byte[]) returned invalid result: ");
                sb.append(read);
                sb.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb.toString());
            } else if (read <= 0) {
                return false;
            } else {
                this.f47231g += read;
                m16409z();
                if (this.f47231g >= i) {
                    return true;
                }
            }
        }
        StringBuilder sb2 = new StringBuilder(77);
        sb2.append("refillBuffer() called when ");
        sb2.append(i);
        sb2.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb2.toString());
    }

    /* renamed from: h */
    private final byte[] m16430h(int i) throws IOException {
        byte[] m16428i = m16428i(i);
        if (m16428i != null) {
            return m16428i;
        }
        int i2 = this.f47233i;
        int i3 = this.f47231g;
        int i4 = i3 - i2;
        this.f47235k += i3;
        this.f47233i = 0;
        this.f47231g = 0;
        List<byte[]> m16426j = m16426j(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f47230f, i2, bArr, 0, i4);
        Iterator<byte[]> it2 = m16426j.iterator();
        int i5 = i4;
        while (true) {
            int i6 = i5;
            if (!it2.hasNext()) {
                return bArr;
            }
            byte[] next = it2.next();
            System.arraycopy(next, 0, bArr, i6, next.length);
            i5 = i6 + next.length;
        }
    }

    /* renamed from: i */
    private final byte[] m16428i(int i) throws IOException {
        if (i == 0) {
            return dnj.f47287b;
        }
        if (i < 0) {
            throw zzenn.m13634b();
        }
        int i2 = this.f47235k + this.f47233i + i;
        if (i2 - this.f47218c > 0) {
            throw zzenn.m13629g();
        }
        int i3 = this.f47236l;
        if (i2 > i3) {
            m16424k((i3 - this.f47235k) - this.f47233i);
            throw zzenn.m13635a();
        }
        int i4 = this.f47231g - this.f47233i;
        int i5 = i - i4;
        if (i5 >= 4096 && i5 > this.f47229e.available()) {
            return null;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f47230f, this.f47233i, bArr, 0, i4);
        this.f47235k += this.f47231g;
        this.f47233i = 0;
        this.f47231g = 0;
        while (i4 < i) {
            int read = this.f47229e.read(bArr, i4, i - i4);
            if (read == -1) {
                throw zzenn.m13635a();
            }
            this.f47235k += read;
            i4 += read;
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        r7 = r7 - r0;
        r0.add(r0);
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<byte[]> m16426j(int r7) throws java.io.IOException {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
        L8:
            r0 = r7
            if (r0 <= 0) goto L62
            r0 = r7
            r1 = 4096(0x1000, float:5.74E-42)
            int r0 = java.lang.Math.min(r0, r1)
            r9 = r0
            r0 = r9
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = 0
            r11 = r0
        L1c:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L52
            r0 = r6
            java.io.InputStream r0 = r0.f47229e
            r1 = r10
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            int r0 = r0.read(r1, r2, r3)
            r12 = r0
            r0 = r12
            r1 = -1
            if (r0 == r1) goto L4e
            r0 = r6
            r1 = r6
            int r1 = r1.f47235k
            r2 = r12
            int r1 = r1 + r2
            r0.f47235k = r1
            r0 = r11
            r1 = r12
            int r0 = r0 + r1
            r11 = r0
            goto L1c
        L4e:
            com.google.android.gms.internal.ads.zzenn r0 = com.google.android.gms.internal.ads.zzenn.m13635a()
            throw r0
        L52:
            r0 = r7
            r1 = r9
            int r0 = r0 - r1
            r7 = r0
            r0 = r8
            r1 = r10
            boolean r0 = r0.add(r1)
            goto L8
        L62:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmn.m16426j(int):java.util.List");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    private final void m16424k(int i) throws IOException {
        int i2 = this.f47231g;
        int i3 = this.f47233i;
        if (i <= i2 - i3 && i >= 0) {
            this.f47233i = i3 + i;
        } else if (i < 0) {
            throw zzenn.m13634b();
        } else {
            int i4 = this.f47235k;
            int i5 = this.f47236l;
            if (i4 + i3 + i > i5) {
                m16424k((i5 - i4) - i3);
                throw zzenn.m13635a();
            }
            this.f47235k = i4 + i3;
            int i6 = i2 - i3;
            this.f47231g = 0;
            this.f47233i = 0;
            while (i6 < i) {
                try {
                    long j = i - i6;
                    long skip = this.f47229e.skip(j);
                    int i7 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                    if (i7 >= 0 && skip <= j) {
                        if (i7 == 0) {
                            break;
                        }
                        i6 += (int) skip;
                    } else {
                        String valueOf = String.valueOf(this.f47229e.getClass());
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 92);
                        sb.append(valueOf);
                        sb.append("#skip returned invalid result: ");
                        sb.append(skip);
                        sb.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(sb.toString());
                    }
                } catch (Throwable th) {
                    this.f47235k += i6;
                    m16409z();
                    throw th;
                }
            }
            this.f47235k += i6;
            m16409z();
            if (i6 >= i) {
                return;
            }
            int i8 = this.f47231g;
            int i9 = i8 - this.f47233i;
            this.f47233i = i8;
            m16434f(1);
            while (true) {
                int i10 = i - i9;
                int i11 = this.f47231g;
                if (i10 <= i11) {
                    this.f47233i = i10;
                    return;
                }
                i9 += i11;
                this.f47233i = i11;
                m16434f(1);
            }
        }
    }

    /* renamed from: v */
    private final int m16413v() throws IOException {
        int i;
        int i2 = this.f47233i;
        int i3 = this.f47231g;
        if (i3 != i2) {
            byte[] bArr = this.f47230f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f47233i = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        i5 = i7;
                        i = i8 ^ 16256;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            byte b2 = bArr[i5];
                            int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                            i = i11;
                            i5 = i10;
                            if (b2 < 0) {
                                int i12 = i10 + 1;
                                i = i11;
                                i5 = i12;
                                if (bArr[i10] < 0) {
                                    int i13 = i12 + 1;
                                    i = i11;
                                    i5 = i13;
                                    if (bArr[i12] < 0) {
                                        int i14 = i13 + 1;
                                        i = i11;
                                        i5 = i14;
                                        if (bArr[i13] < 0) {
                                            int i15 = i14 + 1;
                                            i = i11;
                                            i5 = i15;
                                            if (bArr[i14] < 0) {
                                                i5 = i15 + 1;
                                                if (bArr[i15] >= 0) {
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.f47233i = i5;
                return i;
            }
        }
        return (int) mo16416s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0156, code lost:
        if (r0[r0] >= 0) goto L39;
     */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m16412w() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmn.m16412w():long");
    }

    /* renamed from: x */
    private final int m16411x() throws IOException {
        int i = this.f47233i;
        int i2 = i;
        if (this.f47231g - i < 4) {
            m16434f(4);
            i2 = this.f47233i;
        }
        byte[] bArr = this.f47230f;
        this.f47233i = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* renamed from: y */
    private final long m16410y() throws IOException {
        int i = this.f47233i;
        int i2 = i;
        if (this.f47231g - i < 8) {
            m16434f(8);
            i2 = this.f47233i;
        }
        byte[] bArr = this.f47230f;
        this.f47233i = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    /* renamed from: z */
    private final void m16409z() {
        int i = this.f47231g + this.f47232h;
        this.f47231g = i;
        int i2 = this.f47235k + i;
        int i3 = this.f47236l;
        if (i2 <= i3) {
            this.f47232h = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f47232h = i4;
        this.f47231g = i - i4;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: a */
    public final int mo16444a() throws IOException {
        if (mo16415t()) {
            this.f47234j = 0;
            return 0;
        }
        int m16413v = m16413v();
        this.f47234j = m16413v;
        if ((m16413v >>> 3) == 0) {
            throw zzenn.m13632d();
        }
        return m16413v;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: a */
    public final void mo16443a(int i) throws zzenn {
        if (this.f47234j == i) {
            return;
        }
        throw zzenn.m13631e();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: b */
    public final double mo16442b() throws IOException {
        return Double.longBitsToDouble(m16410y());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: b */
    public final boolean mo16441b(int i) throws IOException {
        int mo16444a;
        int i2 = i & 7;
        if (i2 == 0) {
            if (this.f47231g - this.f47233i < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (m16445A() >= 0) {
                        return true;
                    }
                }
                throw zzenn.m13633c();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.f47230f;
                int i5 = this.f47233i;
                this.f47233i = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzenn.m13633c();
        } else if (i2 == 1) {
            m16424k(8);
            return true;
        } else if (i2 == 2) {
            m16424k(m16413v());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzenn.m13630f();
            }
            m16424k(4);
            return true;
        } else {
            do {
                mo16444a = mo16444a();
                if (mo16444a == 0) {
                    break;
                }
            } while (mo16441b(mo16444a));
            mo16443a(((i >>> 3) << 3) | 4);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: c */
    public final float mo16440c() throws IOException {
        return Float.intBitsToFloat(m16411x());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: c */
    public final int mo16439c(int i) throws zzenn {
        if (i >= 0) {
            int i2 = i + this.f47235k + this.f47233i;
            int i3 = this.f47236l;
            if (i2 > i3) {
                throw zzenn.m13635a();
            }
            this.f47236l = i2;
            m16409z();
            return i3;
        }
        throw zzenn.m13634b();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: d */
    public final long mo16438d() throws IOException {
        return m16412w();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: d */
    public final void mo16437d(int i) {
        this.f47236l = i;
        m16409z();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: e */
    public final long mo16436e() throws IOException {
        return m16412w();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: f */
    public final int mo16435f() throws IOException {
        return m16413v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: g */
    public final long mo16433g() throws IOException {
        return m16410y();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: h */
    public final int mo16431h() throws IOException {
        return m16411x();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: i */
    public final boolean mo16429i() throws IOException {
        return m16412w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: j */
    public final String mo16427j() throws IOException {
        int m16413v = m16413v();
        if (m16413v > 0 && m16413v <= this.f47231g - this.f47233i) {
            String str = new String(this.f47230f, this.f47233i, m16413v, dnj.f47286a);
            this.f47233i += m16413v;
            return str;
        } else if (m16413v == 0) {
            return "";
        } else {
            if (m16413v > this.f47231g) {
                return new String(m16430h(m16413v), dnj.f47286a);
            }
            m16434f(m16413v);
            String str2 = new String(this.f47230f, this.f47233i, m16413v, dnj.f47286a);
            this.f47233i += m16413v;
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: k */
    public final String mo16425k() throws IOException {
        byte[] bArr;
        int m16413v = m16413v();
        int i = this.f47233i;
        int i2 = this.f47231g;
        if (m16413v <= i2 - i && m16413v > 0) {
            bArr = this.f47230f;
            this.f47233i = i + m16413v;
        } else if (m16413v == 0) {
            return "";
        } else {
            if (m16413v <= i2) {
                m16434f(m16413v);
                bArr = this.f47230f;
                this.f47233i = m16413v;
            } else {
                bArr = m16430h(m16413v);
            }
            i = 0;
        }
        return dqp.m15936b(bArr, i, m16413v);
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: l */
    public final dlw mo16423l() throws IOException {
        int m16413v = m16413v();
        int i = this.f47231g;
        int i2 = this.f47233i;
        if (m16413v <= i - i2 && m16413v > 0) {
            dlw m16474a = dlw.m16474a(this.f47230f, i2, m16413v);
            this.f47233i += m16413v;
            return m16474a;
        } else if (m16413v == 0) {
            return dlw.f47199a;
        } else {
            byte[] m16428i = m16428i(m16413v);
            if (m16428i != null) {
                return dlw.m16475a(m16428i);
            }
            int i3 = this.f47233i;
            int i4 = this.f47231g;
            int i5 = i4 - i3;
            this.f47235k += i4;
            this.f47233i = 0;
            this.f47231g = 0;
            List<byte[]> m16426j = m16426j(m16413v - i5);
            byte[] bArr = new byte[m16413v];
            System.arraycopy(this.f47230f, i3, bArr, 0, i5);
            for (byte[] bArr2 : m16426j) {
                System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                i5 += bArr2.length;
            }
            return dlw.m16471b(bArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: m */
    public final int mo16422m() throws IOException {
        return m16413v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: n */
    public final int mo16421n() throws IOException {
        return m16413v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: o */
    public final int mo16420o() throws IOException {
        return m16411x();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: p */
    public final long mo16419p() throws IOException {
        return m16410y();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: q */
    public final int mo16418q() throws IOException {
        return m16454e(m16413v());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: r */
    public final long mo16417r() throws IOException {
        return m16456a(m16412w());
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: s */
    public final long mo16416s() throws IOException {
        byte m16445A;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m16445A & Byte.MAX_VALUE) << i;
            if ((m16445A() & 128) == 0) {
                return c;
            }
        }
        throw zzenn.m13633c();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: t */
    public final boolean mo16415t() throws IOException {
        return this.f47233i == this.f47231g && !m16432g(1);
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: u */
    public final int mo16414u() {
        return this.f47235k + this.f47233i;
    }
}
