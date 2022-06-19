package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.ads.id3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/id3.class */
final class C6586id3 extends md3 {

    /* renamed from: f */
    private final Iterable<ByteBuffer> f24204f;

    /* renamed from: g */
    private final Iterator<ByteBuffer> f24205g;

    /* renamed from: h */
    private ByteBuffer f24206h;

    /* renamed from: i */
    private int f24207i;

    /* renamed from: j */
    private int f24208j;

    /* renamed from: l */
    private int f24210l;

    /* renamed from: n */
    private long f24212n;

    /* renamed from: o */
    private long f24213o;

    /* renamed from: p */
    private long f24214p;

    /* renamed from: k */
    private int f24209k = Integer.MAX_VALUE;

    /* renamed from: m */
    private int f24211m = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C6586id3(Iterable iterable, Iterable<ByteBuffer> iterable2, int i, boolean z) {
        super(null);
        this.f24207i = iterable2;
        this.f24204f = iterable;
        this.f24205g = iterable.iterator();
        if (iterable2 != 0) {
            m14444E();
            return;
        }
        this.f24206h = se3.f29465d;
        this.f24212n = 0L;
        this.f24213o = 0L;
        this.f24214p = 0L;
    }

    /* renamed from: D */
    private final void m14445D() {
        if (this.f24205g.hasNext()) {
            m14444E();
            return;
        }
        throw zzggm.zzd();
    }

    /* renamed from: E */
    private final void m14444E() {
        ByteBuffer next = this.f24205g.next();
        this.f24206h = next;
        this.f24211m += (int) (this.f24212n - this.f24213o);
        long position = next.position();
        this.f24212n = position;
        this.f24213o = position;
        this.f24214p = this.f24206h.limit();
        long m16370A = bh3.m16370A(this.f24206h);
        this.f24212n += m16370A;
        this.f24213o += m16370A;
        this.f24214p += m16370A;
    }

    /* renamed from: F */
    private final void m14443F() {
        int i = this.f24207i + this.f24208j;
        this.f24207i = i;
        int i2 = this.f24209k;
        if (i <= i2) {
            this.f24208j = 0;
            return;
        }
        int i3 = i - i2;
        this.f24208j = i3;
        this.f24207i = i - i3;
    }

    /* renamed from: G */
    private final void m14442G(byte[] bArr, int i, int i2) {
        if (i2 > m14441H()) {
            if (i2 > 0) {
                throw zzggm.zzd();
            }
            return;
        }
        int i3 = i2;
        while (i3 > 0) {
            if (this.f24214p - this.f24212n == 0) {
                m14445D();
            }
            int min = Math.min(i3, (int) (this.f24214p - this.f24212n));
            long j = min;
            bh3.m16338y(this.f24212n, bArr, i2 - i3, j);
            i3 -= min;
            this.f24212n += j;
        }
    }

    /* renamed from: H */
    private final int m14441H() {
        return (int) (((this.f24207i - this.f24211m) - this.f24212n) + this.f24213o);
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: A */
    public final int mo13282A(int i) {
        if (i >= 0) {
            int mo13279c = i + mo13279c();
            int i2 = this.f24209k;
            if (mo13279c > i2) {
                throw zzggm.zzd();
            }
            this.f24209k = mo13279c;
            m14443F();
            return i2;
        }
        throw zzggm.zze();
    }

    /* renamed from: B */
    public final byte m14447B() {
        if (this.f24214p - this.f24212n == 0) {
            m14445D();
        }
        long j = this.f24212n;
        this.f24212n = 1 + j;
        return bh3.m16337z(j);
    }

    /* renamed from: C */
    public final void m14446C(int i) {
        if (i < 0 || i > ((this.f24207i - this.f24211m) - this.f24212n) + this.f24213o) {
            if (i >= 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
        while (i > 0) {
            if (this.f24214p - this.f24212n == 0) {
                m14445D();
            }
            int min = Math.min(i, (int) (this.f24214p - this.f24212n));
            i -= min;
            this.f24212n += min;
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* renamed from: I */
    public final int m14440I() {
        int i;
        long j = this.f24212n;
        if (this.f24214p != j) {
            long j2 = j + 1;
            byte m16337z = bh3.m16337z(j);
            if (m16337z >= 0) {
                this.f24212n++;
                return m16337z;
            } else if (this.f24214p - this.f24212n >= 10) {
                char c = j2 + 1;
                int m16337z2 = m16337z ^ (bh3.m16337z(j2) << 7);
                if (m16337z2 < 0) {
                    i = m16337z2 ^ (-128);
                } else {
                    ?? r0 = c + 1;
                    int m16337z3 = m16337z2 ^ (bh3.m16337z(c) << 14);
                    if (m16337z3 >= 0) {
                        i = m16337z3 ^ 16256;
                        c = r0;
                    } else {
                        c = r0 + 1;
                        int m16337z4 = m16337z3 ^ (bh3.m16337z(r0) << 21);
                        if (m16337z4 < 0) {
                            i = m16337z4 ^ (-2080896);
                        } else {
                            ?? r02 = c + 1;
                            byte m16337z5 = bh3.m16337z(c);
                            int i2 = (m16337z4 ^ (m16337z5 << 28)) ^ 266354560;
                            i = i2;
                            c = r02;
                            if (m16337z5 < 0) {
                                ?? r03 = r02 + 1;
                                i = i2;
                                c = r03;
                                if (bh3.m16337z(r02) < 0) {
                                    ?? r04 = r03 + 1;
                                    i = i2;
                                    c = r04;
                                    if (bh3.m16337z(r03) < 0) {
                                        ?? r05 = r04 + 1;
                                        i = i2;
                                        c = r05;
                                        if (bh3.m16337z(r04) < 0) {
                                            ?? r06 = r05 + 1;
                                            i = i2;
                                            c = r06;
                                            if (bh3.m16337z(r05) < 0) {
                                                c = r06 + 1;
                                                if (bh3.m16337z(r06) >= 0) {
                                                    i = i2;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.f24212n = c;
                return i;
            }
        }
        return (int) m14438K();
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* renamed from: J */
    public final long m14439J() {
        char c;
        char c2;
        char c3;
        char c4;
        int i;
        long j = this.f24212n;
        if (this.f24214p != j) {
            long j2 = j + 1;
            byte m16337z = bh3.m16337z(j);
            if (m16337z >= 0) {
                this.f24212n++;
                return m16337z;
            } else if (this.f24214p - this.f24212n >= 10) {
                ?? r0 = j2 + 1;
                int m16337z2 = m16337z ^ (bh3.m16337z(j2) << 7);
                if (m16337z2 >= 0) {
                    c = r0 + 1;
                    int m16337z3 = m16337z2 ^ (bh3.m16337z(r0) << 14);
                    if (m16337z3 >= 0) {
                        c2 = m16337z3 ^ 16256;
                    } else {
                        ?? r02 = c + 1;
                        int m16337z4 = m16337z3 ^ (bh3.m16337z(c) << 21);
                        if (m16337z4 < 0) {
                            i = m16337z4 ^ (-2080896);
                            c = r02;
                        } else {
                            c = r02 + 1;
                            char m16337z5 = m16337z4 ^ (bh3.m16337z(r02) << 28);
                            if (m16337z5 >= 0) {
                                c4 = 16256;
                            } else {
                                char c5 = c + 1;
                                char m16337z6 = m16337z5 ^ (bh3.m16337z(c) << 35);
                                if (m16337z6 < 0) {
                                    c3 = 16256;
                                } else {
                                    c = c5 + 1;
                                    m16337z5 = m16337z6 ^ (bh3.m16337z(c5) << 42);
                                    if (m16337z5 >= 0) {
                                        c4 = 16256;
                                    } else {
                                        c5 = c + 1;
                                        m16337z6 = m16337z5 ^ (bh3.m16337z(c) << 49);
                                        if (m16337z6 < 0) {
                                            c3 = 16256;
                                        } else {
                                            ?? r03 = c5 + 1;
                                            ?? m16337z7 = (m16337z6 ^ (bh3.m16337z(c5) << 56)) ^ 71499008037633920L;
                                            c2 = m16337z7;
                                            c = r03;
                                            if (m16337z7 < 0) {
                                                if (bh3.m16337z(r03) >= 0) {
                                                    c = 1 + r03;
                                                    c2 = m16337z7;
                                                }
                                            }
                                        }
                                    }
                                }
                                ?? r04 = m16337z6 ^ c3;
                                c = c5;
                                c2 = r04;
                            }
                            c2 = m16337z5 ^ c4;
                        }
                    }
                    this.f24212n = c;
                    return c2;
                }
                i = m16337z2 ^ (-128);
                c = r0;
                c2 = i;
                this.f24212n = c;
                return c2;
            }
        }
        return m14438K();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: K */
    final long m14438K() {
        byte m14447B;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m14447B & Byte.MAX_VALUE) << i;
            if ((m14447B() & 128) == 0) {
                return c;
            }
        }
        throw zzggm.zzf();
    }

    /* renamed from: L */
    public final int m14437L() {
        int m14447B;
        byte m14447B2;
        long j = this.f24214p;
        long j2 = this.f24212n;
        if (j - j2 >= 4) {
            this.f24212n = 4 + j2;
            m14447B = (bh3.m16337z(j2) & 255) | ((bh3.m16337z(1 + j2) & 255) << 8) | ((bh3.m16337z(2 + j2) & 255) << 16);
            m14447B2 = bh3.m16337z(j2 + 3);
        } else {
            m14447B = (m14447B() & 255) | ((m14447B() & 255) << 8) | ((m14447B() & 255) << 16);
            m14447B2 = m14447B();
        }
        return m14447B | ((m14447B2 & 255) << 24);
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* renamed from: M */
    public final long m14436M() {
        char m14447B;
        byte m14447B2;
        long j = this.f24214p;
        long j2 = this.f24212n;
        if (j - j2 >= 8) {
            this.f24212n = 8 + j2;
            m14447B = (bh3.m16337z(j2) & 255) | ((bh3.m16337z(1 + j2) & 255) << 8) | ((bh3.m16337z(2 + j2) & 255) << 16) | ((bh3.m16337z(3 + j2) & 255) << 24) | ((bh3.m16337z(4 + j2) & 255) << 32) | ((bh3.m16337z(5 + j2) & 255) << 40) | ((bh3.m16337z(6 + j2) & 255) << 48);
            m14447B2 = bh3.m16337z(j2 + 7);
        } else {
            m14447B = (m14447B() & 255) | ((m14447B() & 255) << 8) | ((m14447B() & 255) << 16) | ((m14447B() & 255) << 24) | ((m14447B() & 255) << 32) | ((m14447B() & 255) << 40) | ((m14447B() & 255) << 48);
            m14447B2 = m14447B();
        }
        return m14447B | ((m14447B2 & 255) << 56);
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: a */
    public final void mo13281a(int i) {
        this.f24209k = i;
        m14443F();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: b */
    public final boolean mo13280b() {
        return (((long) this.f24211m) + this.f24212n) - this.f24213o == ((long) this.f24207i);
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: c */
    public final int mo13279c() {
        return (int) ((this.f24211m + this.f24212n) - this.f24213o);
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: g */
    public final int mo13275g() {
        if (mo13280b()) {
            this.f24210l = 0;
            return 0;
        }
        int m14440I = m14440I();
        this.f24210l = m14440I;
        if ((m14440I >>> 3) == 0) {
            throw zzggm.zzg();
        }
        return m14440I;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: h */
    public final void mo13274h(int i) {
        if (this.f24210l == i) {
            return;
        }
        throw zzggm.zzh();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: i */
    public final boolean mo13273i(int i) {
        int mo13275g;
        int i2 = i & 7;
        if (i2 == 0) {
            for (int i3 = 0; i3 < 10; i3++) {
                if (m14447B() >= 0) {
                    return true;
                }
            }
            throw zzggm.zzf();
        } else if (i2 == 1) {
            m14446C(8);
            return true;
        } else if (i2 == 2) {
            m14446C(m14440I());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzggm.zzi();
            }
            m14446C(4);
            return true;
        } else {
            do {
                mo13275g = mo13275g();
                if (mo13275g == 0) {
                    break;
                }
            } while (mo13273i(mo13275g));
            mo13274h(((i >>> 3) << 3) | 4);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: j */
    public final double mo13272j() {
        return Double.longBitsToDouble(m14436M());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: k */
    public final float mo13271k() {
        return Float.intBitsToFloat(m14437L());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: l */
    public final long mo13270l() {
        return m14439J();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: m */
    public final long mo13269m() {
        return m14439J();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: n */
    public final int mo13268n() {
        return m14440I();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: o */
    public final long mo13267o() {
        return m14436M();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: p */
    public final int mo13266p() {
        return m14437L();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: q */
    public final boolean mo13265q() {
        return m14439J() != 0;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: r */
    public final String mo13264r() {
        int m14440I = m14440I();
        if (m14440I > 0) {
            long j = m14440I;
            long j2 = this.f24214p;
            long j3 = this.f24212n;
            if (j <= j2 - j3) {
                byte[] bArr = new byte[m14440I];
                bh3.m16338y(j3, bArr, 0L, j);
                String str = new String(bArr, se3.f29462a);
                this.f24212n += j;
                return str;
            }
        }
        if (m14440I > 0 && m14440I <= m14441H()) {
            byte[] bArr2 = new byte[m14440I];
            m14442G(bArr2, 0, m14440I);
            return new String(bArr2, se3.f29462a);
        } else if (m14440I == 0) {
            return "";
        } else {
            if (m14440I >= 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: s */
    public final String mo13263s() {
        int m14440I = m14440I();
        if (m14440I > 0) {
            long j = m14440I;
            long j2 = this.f24214p;
            long j3 = this.f24212n;
            if (j <= j2 - j3) {
                String m15190i = fh3.m15190i(this.f24206h, (int) (j3 - this.f24213o), m14440I);
                this.f24212n += j;
                return m15190i;
            }
        }
        if (m14440I >= 0 && m14440I <= m14441H()) {
            byte[] bArr = new byte[m14440I];
            m14442G(bArr, 0, m14440I);
            return fh3.m15189j(bArr, 0, m14440I);
        } else if (m14440I == 0) {
            return "";
        } else {
            if (m14440I > 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: t */
    public final zzgex mo13262t() {
        int m14440I = m14440I();
        if (m14440I > 0) {
            long j = m14440I;
            long j2 = this.f24214p;
            long j3 = this.f24212n;
            if (j <= j2 - j3) {
                byte[] bArr = new byte[m14440I];
                bh3.m16338y(j3, bArr, 0L, j);
                this.f24212n += j;
                return zzgex.zzu(bArr);
            }
        }
        if (m14440I > 0 && m14440I <= m14441H()) {
            byte[] bArr2 = new byte[m14440I];
            m14442G(bArr2, 0, m14440I);
            return zzgex.zzu(bArr2);
        } else if (m14440I == 0) {
            return zzgex.f34110d;
        } else {
            if (m14440I >= 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: u */
    public final int mo13261u() {
        return m14440I();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: v */
    public final int mo13260v() {
        return m14440I();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: w */
    public final int mo13259w() {
        return m14437L();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: x */
    public final long mo13258x() {
        return m14436M();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: y */
    public final int mo13257y() {
        return md3.m13277e(m14440I());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: z */
    public final long mo13256z() {
        return md3.m13276f(m14439J());
    }
}
