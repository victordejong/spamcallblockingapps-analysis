package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmk.class */
public final class dmk extends dmi {

    /* renamed from: e */
    private final byte[] f47221e;

    /* renamed from: f */
    private final boolean f47222f;

    /* renamed from: g */
    private int f47223g;

    /* renamed from: h */
    private int f47224h;

    /* renamed from: i */
    private int f47225i;

    /* renamed from: j */
    private int f47226j;

    /* renamed from: k */
    private int f47227k;

    /* renamed from: l */
    private int f47228l;

    /* JADX INFO: Access modifiers changed from: private */
    public dmk(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f47228l = Integer.MAX_VALUE;
        this.f47221e = bArr;
        this.f47223g = i2 + i;
        this.f47225i = i;
        this.f47226j = i;
        this.f47222f = z;
    }

    /* renamed from: A */
    private final byte m16452A() throws IOException {
        int i = this.f47225i;
        if (i != this.f47223g) {
            byte[] bArr = this.f47221e;
            this.f47225i = i + 1;
            return bArr[i];
        }
        throw zzenn.m13635a();
    }

    /* renamed from: f */
    private final void m16451f(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f47223g;
            int i3 = this.f47225i;
            if (i <= i2 - i3) {
                this.f47225i = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzenn.m13634b();
        }
        throw zzenn.m13635a();
    }

    /* renamed from: v */
    private final int m16450v() throws IOException {
        int i;
        int i2 = this.f47225i;
        int i3 = this.f47223g;
        if (i3 != i2) {
            byte[] bArr = this.f47221e;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f47225i = i4;
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
                this.f47225i = i5;
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
    private final long m16449w() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dmk.m16449w():long");
    }

    /* renamed from: x */
    private final int m16448x() throws IOException {
        int i = this.f47225i;
        if (this.f47223g - i >= 4) {
            byte[] bArr = this.f47221e;
            this.f47225i = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzenn.m13635a();
    }

    /* renamed from: y */
    private final long m16447y() throws IOException {
        int i = this.f47225i;
        if (this.f47223g - i >= 8) {
            byte[] bArr = this.f47221e;
            this.f47225i = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzenn.m13635a();
    }

    /* renamed from: z */
    private final void m16446z() {
        int i = this.f47223g + this.f47224h;
        this.f47223g = i;
        int i2 = i - this.f47226j;
        int i3 = this.f47228l;
        if (i2 <= i3) {
            this.f47224h = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f47224h = i4;
        this.f47223g = i - i4;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: a */
    public final int mo16444a() throws IOException {
        if (mo16415t()) {
            this.f47227k = 0;
            return 0;
        }
        int m16450v = m16450v();
        this.f47227k = m16450v;
        if ((m16450v >>> 3) == 0) {
            throw zzenn.m13632d();
        }
        return m16450v;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: a */
    public final void mo16443a(int i) throws zzenn {
        if (this.f47227k == i) {
            return;
        }
        throw zzenn.m13631e();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: b */
    public final double mo16442b() throws IOException {
        return Double.longBitsToDouble(m16447y());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: b */
    public final boolean mo16441b(int i) throws IOException {
        int mo16444a;
        int i2 = i & 7;
        if (i2 == 0) {
            if (this.f47223g - this.f47225i < 10) {
                for (int i3 = 0; i3 < 10; i3++) {
                    if (m16452A() >= 0) {
                        return true;
                    }
                }
                throw zzenn.m13633c();
            }
            for (int i4 = 0; i4 < 10; i4++) {
                byte[] bArr = this.f47221e;
                int i5 = this.f47225i;
                this.f47225i = i5 + 1;
                if (bArr[i5] >= 0) {
                    return true;
                }
            }
            throw zzenn.m13633c();
        } else if (i2 == 1) {
            m16451f(8);
            return true;
        } else if (i2 == 2) {
            m16451f(m16450v());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzenn.m13630f();
            }
            m16451f(4);
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
        return Float.intBitsToFloat(m16448x());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: c */
    public final int mo16439c(int i) throws zzenn {
        if (i >= 0) {
            int mo16414u = i + mo16414u();
            int i2 = this.f47228l;
            if (mo16414u > i2) {
                throw zzenn.m13635a();
            }
            this.f47228l = mo16414u;
            m16446z();
            return i2;
        }
        throw zzenn.m13634b();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: d */
    public final long mo16438d() throws IOException {
        return m16449w();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: d */
    public final void mo16437d(int i) {
        this.f47228l = i;
        m16446z();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: e */
    public final long mo16436e() throws IOException {
        return m16449w();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: f */
    public final int mo16435f() throws IOException {
        return m16450v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: g */
    public final long mo16433g() throws IOException {
        return m16447y();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: h */
    public final int mo16431h() throws IOException {
        return m16448x();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: i */
    public final boolean mo16429i() throws IOException {
        return m16449w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: j */
    public final String mo16427j() throws IOException {
        int m16450v = m16450v();
        if (m16450v > 0 && m16450v <= this.f47223g - this.f47225i) {
            String str = new String(this.f47221e, this.f47225i, m16450v, dnj.f47286a);
            this.f47225i += m16450v;
            return str;
        } else if (m16450v == 0) {
            return "";
        } else {
            if (m16450v >= 0) {
                throw zzenn.m13635a();
            }
            throw zzenn.m13634b();
        }
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: k */
    public final String mo16425k() throws IOException {
        int m16450v = m16450v();
        if (m16450v > 0) {
            int i = this.f47223g;
            int i2 = this.f47225i;
            if (m16450v <= i - i2) {
                String m15936b = dqp.m15936b(this.f47221e, i2, m16450v);
                this.f47225i += m16450v;
                return m15936b;
            }
        }
        if (m16450v == 0) {
            return "";
        }
        if (m16450v > 0) {
            throw zzenn.m13635a();
        }
        throw zzenn.m13634b();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: l */
    public final dlw mo16423l() throws IOException {
        byte[] bArr;
        int m16450v = m16450v();
        if (m16450v > 0) {
            int i = this.f47223g;
            int i2 = this.f47225i;
            if (m16450v <= i - i2) {
                dlw m16474a = dlw.m16474a(this.f47221e, i2, m16450v);
                this.f47225i += m16450v;
                return m16474a;
            }
        }
        if (m16450v == 0) {
            return dlw.f47199a;
        }
        if (m16450v > 0) {
            int i3 = this.f47223g;
            int i4 = this.f47225i;
            if (m16450v <= i3 - i4) {
                int i5 = m16450v + i4;
                this.f47225i = i5;
                bArr = Arrays.copyOfRange(this.f47221e, i4, i5);
                return dlw.m16471b(bArr);
            }
        }
        if (m16450v > 0) {
            throw zzenn.m13635a();
        }
        if (m16450v != 0) {
            throw zzenn.m13634b();
        }
        bArr = dnj.f47287b;
        return dlw.m16471b(bArr);
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: m */
    public final int mo16422m() throws IOException {
        return m16450v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: n */
    public final int mo16421n() throws IOException {
        return m16450v();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: o */
    public final int mo16420o() throws IOException {
        return m16448x();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: p */
    public final long mo16419p() throws IOException {
        return m16447y();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: q */
    public final int mo16418q() throws IOException {
        return m16454e(m16450v());
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: r */
    public final long mo16417r() throws IOException {
        return m16456a(m16449w());
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: s */
    public final long mo16416s() throws IOException {
        byte m16452A;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m16452A & Byte.MAX_VALUE) << i;
            if ((m16452A() & 128) == 0) {
                return c;
            }
        }
        throw zzenn.m13633c();
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: t */
    public final boolean mo16415t() throws IOException {
        return this.f47225i == this.f47223g;
    }

    @Override // com.google.android.gms.internal.ads.dmi
    /* renamed from: u */
    public final int mo16414u() {
        return this.f47225i - this.f47226j;
    }
}
