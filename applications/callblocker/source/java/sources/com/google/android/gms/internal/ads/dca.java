package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dca.class */
public final class dca extends dby {

    /* renamed from: e */
    private final byte[] f13965e;

    /* renamed from: f */
    private final boolean f13966f;

    /* renamed from: g */
    private int f13967g;

    /* renamed from: h */
    private int f13968h;

    /* renamed from: i */
    private int f13969i;

    /* renamed from: j */
    private int f13970j;

    /* renamed from: k */
    private int f13971k;

    /* renamed from: l */
    private int f13972l;

    /* JADX INFO: Access modifiers changed from: private */
    public dca(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f13972l = Integer.MAX_VALUE;
        this.f13965e = bArr;
        this.f13967g = i + i2;
        this.f13969i = i;
        this.f13970j = this.f13969i;
        this.f13966f = z;
    }

    /* renamed from: A */
    private final byte m10183A() {
        if (this.f13969i == this.f13967g) {
            throw zzeco.m6551a();
        }
        byte[] bArr = this.f13965e;
        int i = this.f13969i;
        this.f13969i = i + 1;
        return bArr[i];
    }

    /* renamed from: f */
    private final void m10172f(int i) {
        if (i >= 0 && i <= this.f13967g - this.f13969i) {
            this.f13969i += i;
        } else if (i >= 0) {
            throw zzeco.m6551a();
        } else {
            throw zzeco.m6549b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
        if (r0[r0] < 0) goto L33;
     */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m10156v() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dca.m10156v():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x014f, code lost:
        if (r0[r0] < 0) goto L37;
     */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m10155w() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dca.m10155w():long");
    }

    /* renamed from: x */
    private final int m10154x() {
        int i = this.f13969i;
        if (this.f13967g - i < 4) {
            throw zzeco.m6551a();
        }
        byte[] bArr = this.f13965e;
        this.f13969i = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: y */
    private final long m10153y() {
        int i = this.f13969i;
        if (this.f13967g - i < 8) {
            throw zzeco.m6551a();
        }
        byte[] bArr = this.f13965e;
        this.f13969i = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: z */
    private final void m10152z() {
        this.f13967g += this.f13968h;
        int i = this.f13967g - this.f13970j;
        if (i <= this.f13972l) {
            this.f13968h = 0;
            return;
        }
        this.f13968h = i - this.f13972l;
        this.f13967g -= this.f13968h;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: a */
    public final int mo10182a() {
        int i = 0;
        if (mo10158t()) {
            this.f13971k = 0;
        } else {
            this.f13971k = m10156v();
            if ((this.f13971k >>> 3) == 0) {
                throw zzeco.m6547d();
            }
            i = this.f13971k;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: a */
    public final void mo10181a(int i) {
        if (this.f13971k != i) {
            throw zzeco.m6546e();
        }
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: b */
    public final double mo10180b() {
        return Double.longBitsToDouble(m10153y());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: b */
    public final boolean mo10179b(int i) {
        boolean z;
        int mo10182a;
        switch (i & 7) {
            case 0:
                if (this.f13967g - this.f13969i < 10) {
                    for (int i2 = 0; i2 < 10; i2++) {
                        z = true;
                        if (m10183A() >= 0) {
                            break;
                        }
                    }
                    throw zzeco.m6548c();
                }
                for (int i3 = 0; i3 < 10; i3++) {
                    byte[] bArr = this.f13965e;
                    int i4 = this.f13969i;
                    this.f13969i = i4 + 1;
                    z = true;
                    if (bArr[i4] >= 0) {
                        break;
                    }
                }
                throw zzeco.m6548c();
            case 1:
                m10172f(8);
                z = true;
                break;
            case 2:
                m10172f(m10156v());
                z = true;
                break;
            case 3:
                do {
                    mo10182a = mo10182a();
                    if (mo10182a != 0) {
                    }
                    mo10181a(((i >>> 3) << 3) | 4);
                    z = true;
                    break;
                } while (mo10179b(mo10182a));
                mo10181a(((i >>> 3) << 3) | 4);
                z = true;
            case 4:
                z = false;
                break;
            case 5:
                m10172f(4);
                z = true;
                break;
            default:
                throw zzeco.m6545f();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: c */
    public final float mo10178c() {
        return Float.intBitsToFloat(m10154x());
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: c */
    public final int mo10177c(int i) {
        if (i < 0) {
            throw zzeco.m6549b();
        }
        int mo10157u = mo10157u() + i;
        int i2 = this.f13972l;
        if (mo10157u > i2) {
            throw zzeco.m6551a();
        }
        this.f13972l = mo10157u;
        m10152z();
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: d */
    public final long mo10176d() {
        return m10155w();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: d */
    public final void mo10175d(int i) {
        this.f13972l = i;
        m10152z();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: e */
    public final long mo10174e() {
        return m10155w();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: f */
    public final int mo10173f() {
        return m10156v();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: g */
    public final long mo10171g() {
        return m10153y();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: h */
    public final int mo10170h() {
        return m10154x();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: i */
    public final boolean mo10169i() {
        return m10155w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: j */
    public final String mo10168j() {
        String str;
        int m10156v = m10156v();
        if (m10156v > 0 && m10156v <= this.f13967g - this.f13969i) {
            str = new String(this.f13965e, this.f13969i, m10156v, dcz.f14093a);
            this.f13969i = m10156v + this.f13969i;
        } else if (m10156v != 0) {
            if (m10156v >= 0) {
                throw zzeco.m6551a();
            }
            throw zzeco.m6549b();
        } else {
            str = "";
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: k */
    public final String mo10167k() {
        String str;
        int m10156v = m10156v();
        if (m10156v > 0 && m10156v <= this.f13967g - this.f13969i) {
            str = dgd.m9637b(this.f13965e, this.f13969i, m10156v);
            this.f13969i = m10156v + this.f13969i;
        } else if (m10156v != 0) {
            if (m10156v > 0) {
                throw zzeco.m6551a();
            }
            throw zzeco.m6549b();
        } else {
            str = "";
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: l */
    public final dbi mo10166l() {
        byte[] bArr;
        dbi m10214b;
        int m10156v = m10156v();
        if (m10156v > 0 && m10156v <= this.f13967g - this.f13969i) {
            m10214b = dbi.m10218a(this.f13965e, this.f13969i, m10156v);
            this.f13969i = m10156v + this.f13969i;
        } else if (m10156v == 0) {
            m10214b = dbi.f13932a;
        } else {
            if (m10156v > 0 && m10156v <= this.f13967g - this.f13969i) {
                int i = this.f13969i;
                this.f13969i = m10156v + this.f13969i;
                bArr = Arrays.copyOfRange(this.f13965e, i, this.f13969i);
            } else if (m10156v > 0) {
                throw zzeco.m6551a();
            } else {
                if (m10156v != 0) {
                    throw zzeco.m6549b();
                }
                bArr = dcz.f14094b;
            }
            m10214b = dbi.m10214b(bArr);
        }
        return m10214b;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: m */
    public final int mo10165m() {
        return m10156v();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: n */
    public final int mo10164n() {
        return m10156v();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: o */
    public final int mo10163o() {
        return m10154x();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: p */
    public final long mo10162p() {
        return m10153y();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: q */
    public final int mo10161q() {
        return m10196e(m10156v());
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: r */
    public final long mo10160r() {
        return m10198a(m10155w());
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: s */
    public final long mo10159s() {
        byte m10183A;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m10183A & Byte.MAX_VALUE) << i;
            if ((m10183A() & 128) == 0) {
                return c;
            }
        }
        throw zzeco.m6548c();
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: t */
    public final boolean mo10158t() {
        return this.f13969i == this.f13967g;
    }

    @Override // com.google.android.gms.internal.ads.dby
    /* renamed from: u */
    public final int mo10157u() {
        return this.f13969i - this.f13970j;
    }
}
