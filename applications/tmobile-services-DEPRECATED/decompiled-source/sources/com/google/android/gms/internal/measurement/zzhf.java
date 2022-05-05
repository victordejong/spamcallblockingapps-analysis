package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhf.class */
public final class zzhf extends zzhd {

    /* renamed from: d */
    private final byte[] f8480d;

    /* renamed from: e */
    private int f8481e;

    /* renamed from: f */
    private int f8482f;

    /* renamed from: g */
    private int f8483g;

    /* renamed from: h */
    private int f8484h;

    /* renamed from: i */
    private int f8485i;

    /* renamed from: j */
    private int f8486j;

    private zzhf(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f8486j = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f8480d = bArr;
        this.f8481e = i2 + i;
        this.f8483g = i;
        this.f8484h = i;
    }

    /* renamed from: B */
    private final byte m12595B() throws IOException {
        int i = this.f8483g;
        if (i != this.f8481e) {
            byte[] bArr = this.f8480d;
            this.f8483g = i + 1;
            return bArr[i];
        }
        throw zzih.m12385a();
    }

    /* renamed from: C */
    private final void m12594C(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f8481e;
            int i3 = this.f8483g;
            if (i <= i2 - i3) {
                this.f8483g = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzih.m12384b();
        }
        throw zzih.m12385a();
    }

    /* renamed from: E */
    private final int m12592E() throws IOException {
        int i;
        int i2 = this.f8483g;
        int i3 = this.f8481e;
        if (i3 != i2) {
            byte[] bArr = this.f8480d;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f8483g = i4;
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
                        i = i8 ^ 16256;
                        i5 = i7;
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
                this.f8483g = i5;
                return i;
            }
        }
        return (int) m12593D();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0156, code lost:
        if (r0[r0] >= 0) goto L_0x015f;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m12591F() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhf.m12591F():long");
    }

    /* renamed from: G */
    private final int m12590G() throws IOException {
        int i = this.f8483g;
        if (this.f8481e - i >= 4) {
            byte[] bArr = this.f8480d;
            this.f8483g = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzih.m12385a();
    }

    /* renamed from: H */
    private final long m12589H() throws IOException {
        int i = this.f8483g;
        if (this.f8481e - i >= 8) {
            byte[] bArr = this.f8480d;
            this.f8483g = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzih.m12385a();
    }

    /* renamed from: I */
    private final void m12588I() {
        int i = this.f8481e + this.f8482f;
        this.f8481e = i;
        int i2 = i - this.f8484h;
        int i3 = this.f8486j;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.f8482f = i4;
            this.f8481e = i - i4;
            return;
        }
        this.f8482f = 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: A */
    public final int mo12596A() {
        return this.f8483g - this.f8484h;
    }

    /* renamed from: D */
    final long m12593D() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte B = m12595B();
            j |= (B & Byte.MAX_VALUE) << i;
            if ((B & 128) == 0) {
                return j;
            }
        }
        throw zzih.m12383c();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: a */
    public final int mo12587a() throws IOException {
        if (mo12565z()) {
            this.f8485i = 0;
            return 0;
        }
        int E = m12592E();
        this.f8485i = E;
        if ((E >>> 3) != 0) {
            return E;
        }
        throw zzih.m12382d();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: d */
    public final void mo12586d(int i) throws zzih {
        if (this.f8485i != i) {
            throw zzih.m12381e();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: e */
    public final double mo12585e() throws IOException {
        return Double.longBitsToDouble(m12589H());
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: f */
    public final boolean mo12584f(int i) throws IOException {
        int a;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                m12594C(8);
                return true;
            } else if (i2 == 2) {
                m12594C(m12592E());
                return true;
            } else if (i2 == 3) {
                do {
                    a = mo12587a();
                    if (a == 0) {
                        break;
                    }
                } while (mo12584f(a));
                mo12586d(((i >>> 3) << 3) | 4);
                return true;
            } else if (i2 == 4) {
                return false;
            } else {
                if (i2 == 5) {
                    m12594C(4);
                    return true;
                }
                throw zzih.m12380f();
            }
        } else if (this.f8481e - this.f8483g >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f8480d;
                int i4 = this.f8483g;
                this.f8483g = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw zzih.m12383c();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m12595B() >= 0) {
                    return true;
                }
            }
            throw zzih.m12383c();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: g */
    public final float mo12583g() throws IOException {
        return Float.intBitsToFloat(m12590G());
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: h */
    public final int mo12582h(int i) throws zzih {
        if (i >= 0) {
            int A = i + mo12596A();
            int i2 = this.f8486j;
            if (A <= i2) {
                this.f8486j = A;
                m12588I();
                return i2;
            }
            throw zzih.m12385a();
        }
        throw zzih.m12384b();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: i */
    public final long mo12581i() throws IOException {
        return m12591F();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: j */
    public final void mo12580j(int i) {
        this.f8486j = i;
        m12588I();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: l */
    public final long mo12579l() throws IOException {
        return m12591F();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: m */
    public final int mo12578m() throws IOException {
        return m12592E();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: n */
    public final long mo12577n() throws IOException {
        return m12589H();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: o */
    public final int mo12576o() throws IOException {
        return m12590G();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: p */
    public final boolean mo12575p() throws IOException {
        return m12591F() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: q */
    public final String mo12574q() throws IOException {
        int E = m12592E();
        if (E > 0 && E <= this.f8481e - this.f8483g) {
            String str = new String(this.f8480d, this.f8483g, E, zzic.f8533a);
            this.f8483g += E;
            return str;
        } else if (E == 0) {
            return "";
        } else {
            if (E < 0) {
                throw zzih.m12384b();
            }
            throw zzih.m12385a();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: r */
    public final String mo12573r() throws IOException {
        int E = m12592E();
        if (E > 0) {
            int i = this.f8481e;
            int i2 = this.f8483g;
            if (E <= i - i2) {
                String k = zzla.m12036k(this.f8480d, i2, E);
                this.f8483g += E;
                return k;
            }
        }
        if (E == 0) {
            return "";
        }
        if (E <= 0) {
            throw zzih.m12384b();
        }
        throw zzih.m12385a();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: s */
    public final zzgr mo12572s() throws IOException {
        byte[] bArr;
        int E = m12592E();
        if (E > 0) {
            int i = this.f8481e;
            int i2 = this.f8483g;
            if (E <= i - i2) {
                zzgr k = zzgr.m12632k(this.f8480d, i2, E);
                this.f8483g += E;
                return k;
            }
        }
        if (E == 0) {
            return zzgr.f8462g;
        }
        if (E > 0) {
            int i3 = this.f8481e;
            int i4 = this.f8483g;
            if (E <= i3 - i4) {
                int i5 = E + i4;
                this.f8483g = i5;
                bArr = Arrays.copyOfRange(this.f8480d, i4, i5);
                return zzgr.m12633j(bArr);
            }
        }
        if (E > 0) {
            throw zzih.m12385a();
        } else if (E == 0) {
            bArr = zzic.f8534b;
            return zzgr.m12633j(bArr);
        } else {
            throw zzih.m12384b();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: t */
    public final int mo12571t() throws IOException {
        return m12592E();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: u */
    public final int mo12570u() throws IOException {
        return m12592E();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: v */
    public final int mo12569v() throws IOException {
        return m12590G();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: w */
    public final long mo12568w() throws IOException {
        return m12589H();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: x */
    public final int mo12567x() throws IOException {
        return zzhd.m12606k(m12592E());
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: y */
    public final long mo12566y() throws IOException {
        return zzhd.m12608b(m12591F());
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    /* renamed from: z */
    public final boolean mo12565z() throws IOException {
        return this.f8483g == this.f8481e;
    }
}
