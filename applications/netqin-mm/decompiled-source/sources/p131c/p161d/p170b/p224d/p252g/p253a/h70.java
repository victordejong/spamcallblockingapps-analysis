package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzeja;
import com.google.android.gms.internal.ads.zzekb;
import com.google.android.gms.internal.ads.zzekj;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* renamed from: c.d.b.d.g.a.h70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/h70.class */
public final class h70 extends zzeja {

    /* renamed from: e */
    public final InputStream f13244e;

    /* renamed from: f */
    public final byte[] f13245f;

    /* renamed from: g */
    public int f13246g;

    /* renamed from: h */
    public int f13247h;

    /* renamed from: i */
    public int f13248i;

    /* renamed from: j */
    public int f13249j;

    /* renamed from: k */
    public int f13250k;

    /* renamed from: l */
    public int f13251l;

    public h70(InputStream inputStream, int i) {
        super();
        this.f13251l = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        zzekb.m12370a(inputStream, "input");
        this.f13244e = inputStream;
        this.f13245f = new byte[i];
        this.f13246g = 0;
        this.f13248i = 0;
        this.f13250k = 0;
    }

    /* renamed from: A */
    public final byte m26933A() throws IOException {
        if (this.f13248i == this.f13246g) {
            m26930g(1);
        }
        byte[] bArr = this.f13245f;
        int i = this.f13248i;
        this.f13248i = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: a */
    public final double mo12531a() throws IOException {
        return Double.longBitsToDouble(m26922y());
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: a */
    public final void mo12530a(int i) throws zzekj {
        if (this.f13249j != i) {
            throw zzekj.zzbhb();
        }
    }

    /* renamed from: a */
    public final byte[] m26932a(int i, boolean z) throws IOException {
        byte[] i2 = m26928i(i);
        if (i2 != null) {
            return i2;
        }
        int i3 = this.f13248i;
        int i4 = this.f13246g;
        int i5 = i4 - i3;
        this.f13250k += i4;
        this.f13248i = 0;
        this.f13246g = 0;
        List<byte[]> j = m26927j(i - i5);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f13245f, i3, bArr, 0, i5);
        int i6 = i5;
        for (byte[] bArr2 : j) {
            System.arraycopy(bArr2, 0, bArr, i6, bArr2.length);
            i6 += bArr2.length;
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: b */
    public final float mo12527b() throws IOException {
        return Float.intBitsToFloat(m26923x());
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: b */
    public final boolean mo12526b(int i) throws IOException {
        int d;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                m26931f(8);
                return true;
            } else if (i2 == 2) {
                m26931f(m26925v());
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
                    m26931f(4);
                    return true;
                }
                throw zzekj.zzbhc();
            }
        } else if (this.f13246g - this.f13248i >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f13245f;
                int i4 = this.f13248i;
                this.f13248i = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw zzekj.zzbgz();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m26933A() >= 0) {
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
            int i2 = i + this.f13250k + this.f13248i;
            int i3 = this.f13251l;
            if (i2 <= i3) {
                this.f13251l = i2;
                m26921z();
                return i3;
            }
            throw zzekj.zzbgx();
        }
        throw zzekj.zzbgy();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: c */
    public final String mo12525c() throws IOException {
        int v = m26925v();
        if (v > 0 && v <= this.f13246g - this.f13248i) {
            String str = new String(this.f13245f, this.f13248i, v, zzekb.f28088a);
            this.f13248i += v;
            return str;
        } else if (v == 0) {
            return "";
        } else {
            if (v > this.f13246g) {
                return new String(m26932a(v, false), zzekb.f28088a);
            }
            m26930g(v);
            String str2 = new String(this.f13245f, this.f13248i, v, zzekb.f28088a);
            this.f13248i += v;
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: d */
    public final int mo12523d() throws IOException {
        if (mo12506s()) {
            this.f13249j = 0;
            return 0;
        }
        int v = m26925v();
        this.f13249j = v;
        if ((v >>> 3) != 0) {
            return v;
        }
        throw zzekj.zzbha();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: d */
    public final void mo12522d(int i) {
        this.f13251l = i;
        m26921z();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: e */
    public final long mo12521e() throws IOException {
        return m26924w();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: f */
    public final long mo12519f() throws IOException {
        return m26924w();
    }

    /* renamed from: f */
    public final void m26931f(int i) throws IOException {
        int i2 = this.f13246g;
        int i3 = this.f13248i;
        if (i <= i2 - i3 && i >= 0) {
            this.f13248i = i3 + i;
        } else if (i >= 0) {
            int i4 = this.f13250k;
            int i5 = this.f13248i;
            int i6 = this.f13251l;
            if (i4 + i5 + i <= i6) {
                this.f13250k = i4 + i5;
                int i7 = this.f13246g - i5;
                this.f13246g = 0;
                this.f13248i = 0;
                while (i7 < i) {
                    try {
                        long j = i - i7;
                        long skip = this.f13244e.skip(j);
                        if (skip >= 0 && skip <= j) {
                            if (skip == 0) {
                                break;
                            }
                            i7 += (int) skip;
                        } else {
                            String valueOf = String.valueOf(this.f13244e.getClass());
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 92);
                            sb.append(valueOf);
                            sb.append("#skip returned invalid result: ");
                            sb.append(skip);
                            sb.append("\nThe InputStream implementation is buggy.");
                            throw new IllegalStateException(sb.toString());
                        }
                    } finally {
                        this.f13250k += i7;
                        m26921z();
                    }
                }
                if (i7 < i) {
                    int i8 = this.f13246g;
                    int i9 = i8 - this.f13248i;
                    this.f13248i = i8;
                    m26930g(1);
                    while (true) {
                        int i10 = i - i9;
                        int i11 = this.f13246g;
                        if (i10 > i11) {
                            i9 += i11;
                            this.f13248i = i11;
                            m26930g(1);
                        } else {
                            this.f13248i = i10;
                            return;
                        }
                    }
                }
            } else {
                m26931f((i6 - i4) - i5);
                throw zzekj.zzbgx();
            }
        } else {
            throw zzekj.zzbgy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: g */
    public final int mo12518g() throws IOException {
        return m26925v();
    }

    /* renamed from: g */
    public final void m26930g(int i) throws IOException {
        if (m26929h(i)) {
            return;
        }
        if (i > (this.f28056c - this.f13250k) - this.f13248i) {
            throw zzekj.zzbhd();
        }
        throw zzekj.zzbgx();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: h */
    public final long mo12517h() throws IOException {
        return m26922y();
    }

    /* renamed from: h */
    public final boolean m26929h(int i) throws IOException {
        do {
            int i2 = this.f13248i;
            int i3 = this.f13246g;
            if (i2 + i > i3) {
                int i4 = this.f28056c;
                int i5 = this.f13250k;
                if (i > (i4 - i5) - i2 || i5 + i2 + i > this.f13251l) {
                    return false;
                }
                if (i2 > 0) {
                    if (i3 > i2) {
                        byte[] bArr = this.f13245f;
                        System.arraycopy(bArr, i2, bArr, 0, i3 - i2);
                    }
                    this.f13250k += i2;
                    this.f13246g -= i2;
                    this.f13248i = 0;
                }
                InputStream inputStream = this.f13244e;
                byte[] bArr2 = this.f13245f;
                int i6 = this.f13246g;
                int read = inputStream.read(bArr2, i6, Math.min(bArr2.length - i6, (this.f28056c - this.f13250k) - i6));
                if (read == 0 || read < -1 || read > this.f13245f.length) {
                    String valueOf = String.valueOf(this.f13244e.getClass());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 91);
                    sb.append(valueOf);
                    sb.append("#read(byte[]) returned invalid result: ");
                    sb.append(read);
                    sb.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb.toString());
                } else if (read <= 0) {
                    return false;
                } else {
                    this.f13246g += read;
                    m26921z();
                }
            } else {
                StringBuilder sb2 = new StringBuilder(77);
                sb2.append("refillBuffer() called when ");
                sb2.append(i);
                sb2.append(" bytes were already available in buffer");
                throw new IllegalStateException(sb2.toString());
            }
        } while (this.f13246g < i);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: i */
    public final int mo12516i() throws IOException {
        return m26923x();
    }

    /* renamed from: i */
    public final byte[] m26928i(int i) throws IOException {
        if (i == 0) {
            return zzekb.f28089b;
        }
        if (i >= 0) {
            int i2 = this.f13250k;
            int i3 = this.f13248i;
            int i4 = i2 + i3 + i;
            if (i4 - this.f28056c <= 0) {
                int i5 = this.f13251l;
                if (i4 <= i5) {
                    int i6 = this.f13246g - i3;
                    int i7 = i - i6;
                    if (i7 >= 4096 && i7 > this.f13244e.available()) {
                        return null;
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.f13245f, this.f13248i, bArr, 0, i6);
                    this.f13250k += this.f13246g;
                    this.f13248i = 0;
                    this.f13246g = 0;
                    while (i6 < i) {
                        int read = this.f13244e.read(bArr, i6, i - i6);
                        if (read != -1) {
                            this.f13250k += read;
                            i6 += read;
                        } else {
                            throw zzekj.zzbgx();
                        }
                    }
                    return bArr;
                }
                m26931f((i5 - i2) - i3);
                throw zzekj.zzbgx();
            }
            throw zzekj.zzbhd();
        }
        throw zzekj.zzbgy();
    }

    /* renamed from: j */
    public final List<byte[]> m26927j(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.f13244e.read(bArr, i2, min - i2);
                if (read != -1) {
                    this.f13250k += read;
                    i2 += read;
                } else {
                    throw zzekj.zzbgx();
                }
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: j */
    public final boolean mo12515j() throws IOException {
        return m26924w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: k */
    public final String mo12514k() throws IOException {
        byte[] bArr;
        int v = m26925v();
        int i = this.f13248i;
        if (v <= this.f13246g - i && v > 0) {
            bArr = this.f13245f;
            this.f13248i = i + v;
        } else if (v == 0) {
            return "";
        } else {
            if (v <= this.f13246g) {
                m26930g(v);
                bArr = this.f13245f;
                this.f13248i = v;
            } else {
                bArr = m26932a(v, false);
            }
            i = 0;
        }
        return ea0.m27035c(bArr, i, v);
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: l */
    public final zzeip mo12513l() throws IOException {
        int v = m26925v();
        int i = this.f13246g;
        int i2 = this.f13248i;
        if (v <= i - i2 && v > 0) {
            zzeip zzi = zzeip.zzi(this.f13245f, i2, v);
            this.f13248i += v;
            return zzi;
        } else if (v == 0) {
            return zzeip.zzier;
        } else {
            byte[] i3 = m26928i(v);
            if (i3 != null) {
                return zzeip.zzu(i3);
            }
            int i4 = this.f13248i;
            int i5 = this.f13246g;
            int i6 = i5 - i4;
            this.f13250k += i5;
            this.f13248i = 0;
            this.f13246g = 0;
            List<byte[]> j = m26927j(v - i6);
            byte[] bArr = new byte[v];
            System.arraycopy(this.f13245f, i4, bArr, 0, i6);
            for (byte[] bArr2 : j) {
                System.arraycopy(bArr2, 0, bArr, i6, bArr2.length);
                i6 += bArr2.length;
            }
            return zzeip.zzv(bArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: m */
    public final int mo12512m() throws IOException {
        return m26925v();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: n */
    public final int mo12511n() throws IOException {
        return m26925v();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: o */
    public final int mo12510o() throws IOException {
        return m26923x();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: p */
    public final long mo12509p() throws IOException {
        return m26922y();
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: q */
    public final int mo12508q() throws IOException {
        return zzeja.m12520e(m26925v());
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: r */
    public final long mo12507r() throws IOException {
        return zzeja.m12529a(m26924w());
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: s */
    public final boolean mo12506s() throws IOException {
        return this.f13248i == this.f13246g && !m26929h(1);
    }

    @Override // com.google.android.gms.internal.ads.zzeja
    /* renamed from: t */
    public final int mo12505t() {
        return this.f13250k + this.f13248i;
    }

    /* renamed from: u */
    public final long m26926u() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte A = m26933A();
            j |= (A & Byte.MAX_VALUE) << i;
            if ((A & 128) == 0) {
                return j;
            }
        }
        throw zzekj.zzbgz();
    }

    /* renamed from: v */
    public final int m26925v() throws IOException {
        int i;
        int i2 = this.f13248i;
        int i3 = this.f13246g;
        if (i3 != i2) {
            byte[] bArr = this.f13245f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f13248i = i4;
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
                this.f13248i = i5;
                return i;
            }
        }
        return (int) m26926u();
    }

    /* renamed from: w */
    public final long m26924w() throws IOException {
        long j;
        long j2;
        long j3;
        int i;
        int i2 = this.f13248i;
        int i3 = this.f13246g;
        if (i3 != i2) {
            byte[] bArr = this.f13245f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f13248i = i4;
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
                        j = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            long j4 = i9;
                            int i10 = i5 + 1;
                            long j5 = j4 ^ (bArr[i5] << 28);
                            if (j5 >= 0) {
                                j3 = 266354560;
                                i5 = i10;
                            } else {
                                i5 = i10 + 1;
                                long j6 = j5 ^ (bArr[i10] << 35);
                                if (j6 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    int i11 = i5 + 1;
                                    j5 = j6 ^ (bArr[i5] << 42);
                                    if (j5 >= 0) {
                                        j3 = 4363953127296L;
                                        i5 = i11;
                                    } else {
                                        int i12 = i11 + 1;
                                        j6 = j5 ^ (bArr[i11] << 49);
                                        if (j6 < 0) {
                                            j2 = -558586000294016L;
                                            i5 = i12;
                                        } else {
                                            i5 = i12 + 1;
                                            j = (j6 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                            if (j < 0) {
                                                i5++;
                                                if (bArr[i5] >= 0) {
                                                }
                                            }
                                        }
                                    }
                                }
                                j = j6 ^ j2;
                            }
                            j = j3 ^ j5;
                        }
                    }
                    this.f13248i = i5;
                    return j;
                }
                j = i;
                this.f13248i = i5;
                return j;
            }
        }
        return m26926u();
    }

    /* renamed from: x */
    public final int m26923x() throws IOException {
        int i = this.f13248i;
        int i2 = i;
        if (this.f13246g - i < 4) {
            m26930g(4);
            i2 = this.f13248i;
        }
        byte[] bArr = this.f13245f;
        this.f13248i = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* renamed from: y */
    public final long m26922y() throws IOException {
        int i = this.f13248i;
        int i2 = i;
        if (this.f13246g - i < 8) {
            m26930g(8);
            i2 = this.f13248i;
        }
        byte[] bArr = this.f13245f;
        this.f13248i = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    /* renamed from: z */
    public final void m26921z() {
        int i = this.f13246g + this.f13247h;
        this.f13246g = i;
        int i2 = this.f13250k + i;
        int i3 = this.f13251l;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.f13247h = i4;
            this.f13246g = i - i4;
            return;
        }
        this.f13247h = 0;
    }
}
