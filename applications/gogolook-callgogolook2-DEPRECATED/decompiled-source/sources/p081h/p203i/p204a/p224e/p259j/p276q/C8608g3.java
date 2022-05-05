package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.util.Arrays;
/* renamed from: h.i.a.e.j.q.g3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/g3.class */
public final class C8608g3 extends AbstractC8590e3 {

    /* renamed from: d */
    public final byte[] f19683d;

    /* renamed from: e */
    public int f19684e;

    /* renamed from: f */
    public int f19685f;

    /* renamed from: g */
    public int f19686g;

    /* renamed from: h */
    public int f19687h;

    /* renamed from: i */
    public int f19688i;

    /* renamed from: j */
    public int f19689j;

    public C8608g3(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f19689j = Integer.MAX_VALUE;
        this.f19683d = bArr;
        this.f19684e = i2 + i;
        this.f19686g = i;
        this.f19687h = this.f19686g;
    }

    /* renamed from: A */
    public final byte m17660A() throws IOException {
        int i = this.f19686g;
        if (i != this.f19684e) {
            byte[] bArr = this.f19683d;
            this.f19686g = i + 1;
            return bArr[i];
        }
        throw C8647j4.m17444a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: a */
    public final double mo17659a() throws IOException {
        return Double.longBitsToDouble(m17629y());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: a */
    public final <T extends AbstractC8648j5> T mo17657a(AbstractC8739t5<T> t5Var, C8691o3 o3Var) throws IOException {
        int v = m17632v();
        if (this.f19668a < this.f19669b) {
            int d = mo17652d(v);
            this.f19668a++;
            T a = t5Var.mo17147a(this, o3Var);
            mo17658a(0);
            this.f19668a--;
            mo17650e(d);
            return a;
        }
        throw C8647j4.m17438f();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: a */
    public final void mo17658a(int i) throws C8647j4 {
        if (this.f19688i != i) {
            throw C8647j4.m17440d();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: b */
    public final float mo17656b() throws IOException {
        return Float.intBitsToFloat(m17630x());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: b */
    public final boolean mo17655b(int i) throws IOException {
        int d;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                mo17648f(8);
                return true;
            } else if (i2 == 2) {
                mo17648f(m17632v());
                return true;
            } else if (i2 == 3) {
                do {
                    d = mo17653d();
                    if (d == 0) {
                        break;
                    }
                } while (mo17655b(d));
                mo17658a(((i >>> 3) << 3) | 4);
                return true;
            } else if (i2 == 4) {
                return false;
            } else {
                if (i2 == 5) {
                    mo17648f(4);
                    return true;
                }
                throw C8647j4.m17439e();
            }
        } else if (this.f19684e - this.f19686g >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f19683d;
                int i4 = this.f19686g;
                this.f19686g = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw C8647j4.m17441c();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m17660A() >= 0) {
                    return true;
                }
            }
            throw C8647j4.m17441c();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: c */
    public final String mo17654c() throws IOException {
        int v = m17632v();
        if (v > 0) {
            int i = this.f19684e;
            int i2 = this.f19686g;
            if (v <= i - i2) {
                String str = new String(this.f19683d, i2, v, C8591e4.f19671a);
                this.f19686g += v;
                return str;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v < 0) {
            throw C8647j4.m17442b();
        }
        throw C8647j4.m17444a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: d */
    public final int mo17653d() throws IOException {
        if (mo17635s()) {
            this.f19688i = 0;
            return 0;
        }
        this.f19688i = m17632v();
        int i = this.f19688i;
        if ((i >>> 3) != 0) {
            return i;
        }
        throw new C8647j4("Protocol message contained an invalid tag (zero).");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: d */
    public final int mo17652d(int i) throws C8647j4 {
        if (i >= 0) {
            int t = i + mo17634t();
            int i2 = this.f19689j;
            if (t <= i2) {
                this.f19689j = t;
                m17628z();
                return i2;
            }
            throw C8647j4.m17444a();
        }
        throw C8647j4.m17442b();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: e */
    public final long mo17651e() throws IOException {
        return m17631w();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: e */
    public final void mo17650e(int i) {
        this.f19689j = i;
        m17628z();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: f */
    public final long mo17649f() throws IOException {
        return m17631w();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: f */
    public final void mo17648f(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f19684e;
            int i3 = this.f19686g;
            if (i <= i2 - i3) {
                this.f19686g = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw C8647j4.m17442b();
        }
        throw C8647j4.m17444a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: g */
    public final int mo17647g() throws IOException {
        return m17632v();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: h */
    public final long mo17646h() throws IOException {
        return m17629y();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: i */
    public final int mo17645i() throws IOException {
        return m17630x();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: j */
    public final boolean mo17644j() throws IOException {
        return m17631w() != 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: k */
    public final String mo17643k() throws IOException {
        int v = m17632v();
        if (v > 0) {
            int i = this.f19684e;
            int i2 = this.f19686g;
            if (v <= i - i2) {
                String c = C8798z6.m16922c(this.f19683d, i2, v);
                this.f19686g += v;
                return c;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v <= 0) {
            throw C8647j4.m17442b();
        }
        throw C8647j4.m17444a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: l */
    public final AbstractC8736t2 mo17642l() throws IOException {
        byte[] bArr;
        int v = m17632v();
        if (v > 0) {
            int i = this.f19684e;
            int i2 = this.f19686g;
            if (v <= i - i2) {
                AbstractC8736t2 a = AbstractC8736t2.m17174a(this.f19683d, i2, v);
                this.f19686g += v;
                return a;
            }
        }
        if (v == 0) {
            return AbstractC8736t2.f19984b;
        }
        if (v > 0) {
            int i3 = this.f19684e;
            int i4 = this.f19686g;
            if (v <= i3 - i4) {
                this.f19686g = v + i4;
                bArr = Arrays.copyOfRange(this.f19683d, i4, this.f19686g);
                return AbstractC8736t2.m17175a(bArr);
            }
        }
        if (v > 0) {
            throw C8647j4.m17444a();
        } else if (v == 0) {
            bArr = C8591e4.f19672b;
            return AbstractC8736t2.m17175a(bArr);
        } else {
            throw C8647j4.m17442b();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: m */
    public final int mo17641m() throws IOException {
        return m17632v();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: n */
    public final int mo17640n() throws IOException {
        return m17632v();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: o */
    public final int mo17639o() throws IOException {
        return m17630x();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: p */
    public final long mo17638p() throws IOException {
        return m17629y();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: q */
    public final int mo17637q() throws IOException {
        int v = m17632v();
        return (-(v & 1)) ^ (v >>> 1);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: r */
    public final long mo17636r() throws IOException {
        long w = m17631w();
        return (-(w & 1)) ^ (w >>> 1);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: s */
    public final boolean mo17635s() throws IOException {
        return this.f19686g == this.f19684e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8590e3
    /* renamed from: t */
    public final int mo17634t() {
        return this.f19686g - this.f19687h;
    }

    /* renamed from: u */
    public final long m17633u() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte A = m17660A();
            j |= (A & Byte.MAX_VALUE) << i;
            if ((A & 128) == 0) {
                return j;
            }
        }
        throw C8647j4.m17441c();
    }

    /* renamed from: v */
    public final int m17632v() throws IOException {
        int i;
        int i2 = this.f19686g;
        int i3 = this.f19684e;
        if (i3 != i2) {
            byte[] bArr = this.f19683d;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f19686g = i4;
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
                this.f19686g = i5;
                return i;
            }
        }
        return (int) m17633u();
    }

    /* renamed from: w */
    public final long m17631w() throws IOException {
        long j;
        long j2;
        long j3;
        int i;
        int i2 = this.f19686g;
        int i3 = this.f19684e;
        if (i3 != i2) {
            byte[] bArr = this.f19683d;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f19686g = i4;
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
                                int i11 = i10 + 1;
                                long j6 = j5 ^ (bArr[i10] << 35);
                                if (j6 < 0) {
                                    j2 = -34093383808L;
                                    i5 = i11;
                                } else {
                                    i5 = i11 + 1;
                                    j5 = j6 ^ (bArr[i11] << 42);
                                    if (j5 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        int i12 = i5 + 1;
                                        j6 = j5 ^ (bArr[i5] << 49);
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
                            j = j5 ^ j3;
                        }
                    }
                    this.f19686g = i5;
                    return j;
                }
                j = i;
                this.f19686g = i5;
                return j;
            }
        }
        return m17633u();
    }

    /* renamed from: x */
    public final int m17630x() throws IOException {
        int i = this.f19686g;
        if (this.f19684e - i >= 4) {
            byte[] bArr = this.f19683d;
            this.f19686g = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw C8647j4.m17444a();
    }

    /* renamed from: y */
    public final long m17629y() throws IOException {
        int i = this.f19686g;
        if (this.f19684e - i >= 8) {
            byte[] bArr = this.f19683d;
            this.f19686g = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw C8647j4.m17444a();
    }

    /* renamed from: z */
    public final void m17628z() {
        this.f19684e += this.f19685f;
        int i = this.f19684e;
        int i2 = i - this.f19687h;
        int i3 = this.f19689j;
        if (i2 > i3) {
            this.f19685f = i2 - i3;
            this.f19684e = i - this.f19685f;
            return;
        }
        this.f19685f = 0;
    }
}
