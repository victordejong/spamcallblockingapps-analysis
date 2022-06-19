package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hd3.class */
public final class hd3 extends md3 {

    /* renamed from: f */
    private final byte[] f23861f;

    /* renamed from: g */
    private int f23862g;

    /* renamed from: h */
    private int f23863h;

    /* renamed from: i */
    private int f23864i;

    /* renamed from: j */
    private final int f23865j;

    /* renamed from: k */
    private int f23866k;

    /* renamed from: l */
    private int f23867l = Integer.MAX_VALUE;

    public /* synthetic */ hd3(byte[] bArr, int i, int i2, boolean z, kd3 kd3Var) {
        super(null);
        this.f23861f = bArr;
        this.f23862g = i2 + i;
        this.f23864i = i;
        this.f23865j = i;
    }

    /* renamed from: D */
    private final void m14706D() {
        int i = this.f23862g + this.f23863h;
        this.f23862g = i;
        int i2 = i - this.f23865j;
        int i3 = this.f23867l;
        if (i2 <= i3) {
            this.f23863h = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f23863h = i4;
        this.f23862g = i - i4;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: A */
    public final int mo13282A(int i) {
        if (i >= 0) {
            int i2 = i + (this.f23864i - this.f23865j);
            if (i2 < 0) {
                throw zzggm.zzk();
            }
            int i3 = this.f23867l;
            if (i2 > i3) {
                throw zzggm.zzd();
            }
            this.f23867l = i2;
            m14706D();
            return i3;
        }
        throw zzggm.zze();
    }

    /* renamed from: B */
    public final byte m14708B() {
        int i = this.f23864i;
        if (i != this.f23862g) {
            byte[] bArr = this.f23861f;
            this.f23864i = i + 1;
            return bArr[i];
        }
        throw zzggm.zzd();
    }

    /* renamed from: C */
    public final void m14707C(int i) {
        if (i >= 0) {
            int i2 = this.f23862g;
            int i3 = this.f23864i;
            if (i <= i2 - i3) {
                this.f23864i = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzggm.zze();
        }
        throw zzggm.zzd();
    }

    /* renamed from: E */
    public final int m14705E() {
        int i;
        int i2 = this.f23864i;
        int i3 = this.f23862g;
        if (i3 != i2) {
            byte[] bArr = this.f23861f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f23864i = i4;
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
                this.f23864i = i5;
                return i;
            }
        }
        return (int) m14703G();
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* renamed from: F */
    public final long m14704F() {
        char c;
        char c2;
        char c3;
        int i;
        int i2 = this.f23864i;
        int i3 = this.f23862g;
        if (i3 != i2) {
            byte[] bArr = this.f23861f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f23864i = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 >= 0) {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        c = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            char c4 = (bArr[i5] << 28) ^ i9;
                            if (c4 >= 0) {
                                c3 = 16256;
                                i5 = i10;
                            } else {
                                int i11 = i10 + 1;
                                char c5 = c4 ^ (bArr[i10] << 35);
                                if (c5 < 0) {
                                    c2 = 16256;
                                    i5 = i11;
                                } else {
                                    i5 = i11 + 1;
                                    c4 = c5 ^ (bArr[i11] << 42);
                                    if (c4 >= 0) {
                                        c3 = 16256;
                                    } else {
                                        int i12 = i5 + 1;
                                        c5 = c4 ^ (bArr[i5] << 49);
                                        if (c5 < 0) {
                                            c2 = 16256;
                                            i5 = i12;
                                        } else {
                                            int i13 = i12 + 1;
                                            ?? r0 = (c5 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                            c = r0;
                                            i5 = i13;
                                            if (r0 < 0) {
                                                i5 = i13 + 1;
                                                if (bArr[i13] >= 0) {
                                                    c = r0;
                                                }
                                            }
                                        }
                                    }
                                }
                                c = c2 ^ c5;
                            }
                            c = c4 ^ c3;
                        }
                    }
                    this.f23864i = i5;
                    return c;
                }
                i = i6 ^ (-128);
                c = i;
                this.f23864i = i5;
                return c;
            }
        }
        return m14703G();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: G */
    final long m14703G() {
        byte m14708B;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m14708B & Byte.MAX_VALUE) << i;
            if ((m14708B() & 128) == 0) {
                return c;
            }
        }
        throw zzggm.zzf();
    }

    /* renamed from: H */
    public final int m14702H() {
        int i = this.f23864i;
        if (this.f23862g - i >= 4) {
            byte[] bArr = this.f23861f;
            this.f23864i = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzggm.zzd();
    }

    /* renamed from: I */
    public final long m14701I() {
        int i = this.f23864i;
        if (this.f23862g - i >= 8) {
            byte[] bArr = this.f23861f;
            this.f23864i = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzggm.zzd();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: a */
    public final void mo13281a(int i) {
        this.f23867l = i;
        m14706D();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: b */
    public final boolean mo13280b() {
        return this.f23864i == this.f23862g;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: c */
    public final int mo13279c() {
        return this.f23864i - this.f23865j;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: g */
    public final int mo13275g() {
        if (mo13280b()) {
            this.f23866k = 0;
            return 0;
        }
        int m14705E = m14705E();
        this.f23866k = m14705E;
        if ((m14705E >>> 3) == 0) {
            throw zzggm.zzg();
        }
        return m14705E;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: h */
    public final void mo13274h(int i) {
        if (this.f23866k == i) {
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
            if (this.f23862g - this.f23864i < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (m14708B() >= 0) {
                        return true;
                    }
                }
                throw zzggm.zzf();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.f23861f;
                int i5 = this.f23864i;
                this.f23864i = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzggm.zzf();
        } else if (i2 == 1) {
            m14707C(8);
            return true;
        } else if (i2 == 2) {
            m14707C(m14705E());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzggm.zzi();
            }
            m14707C(4);
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
        return Double.longBitsToDouble(m14701I());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: k */
    public final float mo13271k() {
        return Float.intBitsToFloat(m14702H());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: l */
    public final long mo13270l() {
        return m14704F();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: m */
    public final long mo13269m() {
        return m14704F();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: n */
    public final int mo13268n() {
        return m14705E();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: o */
    public final long mo13267o() {
        return m14701I();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: p */
    public final int mo13266p() {
        return m14702H();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: q */
    public final boolean mo13265q() {
        return m14704F() != 0;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: r */
    public final String mo13264r() {
        int m14705E = m14705E();
        if (m14705E > 0) {
            int i = this.f23862g;
            int i2 = this.f23864i;
            if (m14705E <= i - i2) {
                String str = new String(this.f23861f, i2, m14705E, se3.f29462a);
                this.f23864i += m14705E;
                return str;
            }
        }
        if (m14705E == 0) {
            return "";
        }
        if (m14705E >= 0) {
            throw zzggm.zzd();
        }
        throw zzggm.zze();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: s */
    public final String mo13263s() {
        int m14705E = m14705E();
        if (m14705E > 0) {
            int i = this.f23862g;
            int i2 = this.f23864i;
            if (m14705E <= i - i2) {
                String m15189j = fh3.m15189j(this.f23861f, i2, m14705E);
                this.f23864i += m14705E;
                return m15189j;
            }
        }
        if (m14705E == 0) {
            return "";
        }
        if (m14705E > 0) {
            throw zzggm.zzd();
        }
        throw zzggm.zze();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: t */
    public final zzgex mo13262t() {
        int m14705E = m14705E();
        if (m14705E > 0) {
            int i = this.f23862g;
            int i2 = this.f23864i;
            if (m14705E <= i - i2) {
                zzgex zzs = zzgex.zzs(this.f23861f, i2, m14705E);
                this.f23864i += m14705E;
                return zzs;
            }
        }
        if (m14705E != 0) {
            if (m14705E > 0) {
                int i3 = this.f23862g;
                int i4 = this.f23864i;
                if (m14705E <= i3 - i4) {
                    int i5 = m14705E + i4;
                    this.f23864i = i5;
                    return zzgex.zzu(Arrays.copyOfRange(this.f23861f, i4, i5));
                }
            }
            if (m14705E > 0) {
                throw zzggm.zzd();
            }
            throw zzggm.zze();
        }
        return zzgex.f34110d;
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: u */
    public final int mo13261u() {
        return m14705E();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: v */
    public final int mo13260v() {
        return m14705E();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: w */
    public final int mo13259w() {
        return m14702H();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: x */
    public final long mo13258x() {
        return m14701I();
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: y */
    public final int mo13257y() {
        return md3.m13277e(m14705E());
    }

    @Override // com.google.android.gms.internal.ads.md3
    /* renamed from: z */
    public final long mo13256z() {
        return md3.m13276f(m14704F());
    }
}
