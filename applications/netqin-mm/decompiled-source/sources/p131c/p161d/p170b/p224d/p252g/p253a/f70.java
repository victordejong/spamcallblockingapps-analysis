package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzeja;
import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekj;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: c.d.b.d.g.a.f70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f70.class */
public final class f70 extends zzeja {

    /* renamed from: e */
    public final byte[] f12886e;

    /* renamed from: f */
    public int f12887f;

    /* renamed from: g */
    public int f12888g;

    /* renamed from: h */
    public int f12889h;

    /* renamed from: i */
    public int f12890i;

    /* renamed from: j */
    public int f12891j;

    /* renamed from: k */
    public int f12892k;

    public f70(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f12892k = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f12886e = bArr;
        this.f12887f = i2 + i;
        this.f12889h = i;
        this.f12890i = i;
    }

    /* renamed from: A */
    public final byte m27014A() throws IOException {
        int i = this.f12889h;
        if (i != this.f12887f) {
            byte[] bArr = this.f12886e;
            this.f12889h = i + 1;
            return bArr[i];
        }
        throw zzekj.zzbgx();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: a */
    public final double mo12531a() throws IOException {
        return Double.longBitsToDouble(m27008y());
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: a */
    public final void mo12530a(int i) throws zzekj {
        if (this.f12891j != i) {
            throw zzekj.zzbhb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: b */
    public final float mo12527b() throws IOException {
        return Float.intBitsToFloat(m27009x());
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: b */
    public final boolean mo12526b(int i) throws IOException {
        int d;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                m27013f(8);
                return true;
            } else if (i2 == 2) {
                m27013f(m27011v());
                return true;
            } else if (i2 == 3) {
                do {
                    d = mo12523d();
                    if (d == 0) {
                        break;
                    }
                } while (mo12526b(d));
                mo12530a(((i >>> 3) << 3) | 4);
                return true;
            } else if (i2 == 4) {
                return false;
            } else {
                if (i2 == 5) {
                    m27013f(4);
                    return true;
                }
                throw zzekj.zzbhc();
            }
        } else if (this.f12887f - this.f12889h >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f12886e;
                int i4 = this.f12889h;
                this.f12889h = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw zzekj.zzbgz();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m27014A() >= 0) {
                    return true;
                }
            }
            throw zzekj.zzbgz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: c */
    public final int mo12524c(int i) throws zzekj {
        if (i >= 0) {
            int t = i + mo12505t();
            int i2 = this.f12892k;
            if (t <= i2) {
                this.f12892k = t;
                m27007z();
                return i2;
            }
            throw zzekj.zzbgx();
        }
        throw zzekj.zzbgy();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: c */
    public final String mo12525c() throws IOException {
        int v = m27011v();
        if (v > 0 && v <= this.f12887f - this.f12889h) {
            String str = new String(this.f12886e, this.f12889h, v, zzekb.f28088a);
            this.f12889h += v;
            return str;
        } else if (v == 0) {
            return "";
        } else {
            if (v < 0) {
                throw zzekj.zzbgy();
            }
            throw zzekj.zzbgx();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: d */
    public final int mo12523d() throws IOException {
        if (mo12506s()) {
            this.f12891j = 0;
            return 0;
        }
        int v = m27011v();
        this.f12891j = v;
        if ((v >>> 3) != 0) {
            return v;
        }
        throw zzekj.zzbha();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: d */
    public final void mo12522d(int i) {
        this.f12892k = i;
        m27007z();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: e */
    public final long mo12521e() throws IOException {
        return m27010w();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: f */
    public final long mo12519f() throws IOException {
        return m27010w();
    }

    /* renamed from: f */
    public final void m27013f(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f12887f;
            int i3 = this.f12889h;
            if (i <= i2 - i3) {
                this.f12889h = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzekj.zzbgy();
        }
        throw zzekj.zzbgx();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: g */
    public final int mo12518g() throws IOException {
        return m27011v();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: h */
    public final long mo12517h() throws IOException {
        return m27008y();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: i */
    public final int mo12516i() throws IOException {
        return m27009x();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: j */
    public final boolean mo12515j() throws IOException {
        return m27010w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: k */
    public final String mo12514k() throws IOException {
        int v = m27011v();
        if (v > 0) {
            int i = this.f12887f;
            int i2 = this.f12889h;
            if (v <= i - i2) {
                String c = ea0.m27035c(this.f12886e, i2, v);
                this.f12889h += v;
                return c;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v <= 0) {
            throw zzekj.zzbgy();
        }
        throw zzekj.zzbgx();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: l */
    public final zzeip mo12513l() throws IOException {
        byte[] bArr;
        int v = m27011v();
        if (v > 0) {
            int i = this.f12887f;
            int i2 = this.f12889h;
            if (v <= i - i2) {
                zzeip zzi = zzeip.zzi(this.f12886e, i2, v);
                this.f12889h += v;
                return zzi;
            }
        }
        if (v == 0) {
            return zzeip.zzier;
        }
        if (v > 0) {
            int i3 = this.f12887f;
            int i4 = this.f12889h;
            if (v <= i3 - i4) {
                int i5 = v + i4;
                this.f12889h = i5;
                bArr = Arrays.copyOfRange(this.f12886e, i4, i5);
                return zzeip.zzv(bArr);
            }
        }
        if (v > 0) {
            throw zzekj.zzbgx();
        } else if (v == 0) {
            bArr = zzekb.f28089b;
            return zzeip.zzv(bArr);
        } else {
            throw zzekj.zzbgy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: m */
    public final int mo12512m() throws IOException {
        return m27011v();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: n */
    public final int mo12511n() throws IOException {
        return m27011v();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: o */
    public final int mo12510o() throws IOException {
        return m27009x();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: p */
    public final long mo12509p() throws IOException {
        return m27008y();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: q */
    public final int mo12508q() throws IOException {
        return zzeja.m12520e(m27011v());
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: r */
    public final long mo12507r() throws IOException {
        return zzeja.m12529a(m27010w());
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: s */
    public final boolean mo12506s() throws IOException {
        return this.f12889h == this.f12887f;
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: t */
    public final int mo12505t() {
        return this.f12889h - this.f12890i;
    }

    /* renamed from: u */
    public final long m27012u() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte A = m27014A();
            j |= (A & Byte.MAX_VALUE) << i;
            if ((A & 128) == 0) {
                return j;
            }
        }
        throw zzekj.zzbgz();
    }

    /* renamed from: v */
    public final int m27011v() throws IOException {
        int i;
        int i2 = this.f12889h;
        int i3 = this.f12887f;
        if (i3 != i2) {
            byte[] bArr = this.f12886e;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f12889h = i4;
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
                this.f12889h = i5;
                return i;
            }
        }
        return (int) m27012u();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0156, code lost:
        if (r0[r0] >= 0) goto L_0x0162;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m27010w() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.f70.m27010w():long");
    }

    /* renamed from: x */
    public final int m27009x() throws IOException {
        int i = this.f12889h;
        if (this.f12887f - i >= 4) {
            byte[] bArr = this.f12886e;
            this.f12889h = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzekj.zzbgx();
    }

    /* renamed from: y */
    public final long m27008y() throws IOException {
        int i = this.f12889h;
        if (this.f12887f - i >= 8) {
            byte[] bArr = this.f12886e;
            this.f12889h = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzekj.zzbgx();
    }

    /* renamed from: z */
    public final void m27007z() {
        int i = this.f12887f + this.f12888g;
        this.f12887f = i;
        int i2 = i - this.f12890i;
        int i3 = this.f12892k;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.f12888g = i4;
            this.f12887f = i - i4;
            return;
        }
        this.f12888g = 0;
    }
}
