package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import androidx.media2.exoplayer.external.Format;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27107a;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/b.class */
public final class C27255b implements AbstractC27272j {

    /* renamed from: a */
    public final C27433l f76477a;

    /* renamed from: b */
    public final C27434m f76478b;

    /* renamed from: c */
    public final String f76479c;

    /* renamed from: d */
    public String f76480d;

    /* renamed from: e */
    public AbstractC27190p f76481e;

    /* renamed from: f */
    public int f76482f = 0;

    /* renamed from: g */
    public int f76483g;

    /* renamed from: h */
    public boolean f76484h;

    /* renamed from: i */
    public long f76485i;

    /* renamed from: j */
    public Format f76486j;

    /* renamed from: k */
    public int f76487k;

    /* renamed from: l */
    public long f76488l;

    public C27255b(String str) {
        C27433l c27433l = new C27433l(new byte[128]);
        this.f76477a = c27433l;
        this.f76478b = new C27434m(c27433l.f77196a);
        this.f76479c = str;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: a */
    public void mo629a() {
        this.f76482f = 0;
        this.f76483g = 0;
        this.f76484h = false;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: b */
    public void mo628b() {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: c */
    public void mo627c(long j, int i) {
        this.f76488l = j;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: d */
    public void mo626d(C27434m c27434m) {
        int i;
        int i2;
        int i3;
        String str;
        int i4;
        int i5;
        int i6;
        int i7;
        Object[] objArr;
        while (c27434m.m340a() > 0) {
            int i8 = this.f76482f;
            if (i8 == 0) {
                while (true) {
                    if (c27434m.m340a() <= 0) {
                        objArr = null;
                        break;
                    } else if (!this.f76484h) {
                        this.f76484h = c27434m.m326o() == 11;
                    } else {
                        int m326o = c27434m.m326o();
                        if (m326o == 119) {
                            this.f76484h = false;
                            objArr = 1;
                            break;
                        }
                        this.f76484h = m326o == 11;
                    }
                }
                if (objArr != null) {
                    this.f76482f = 1;
                    byte[] bArr = this.f76478b.f77200a;
                    bArr[0] = (byte) 11;
                    bArr[1] = (byte) 119;
                    this.f76483g = 2;
                }
            } else if (i8 == 1) {
                byte[] bArr2 = this.f76478b.f77200a;
                int min = Math.min(c27434m.m340a(), 128 - this.f76483g);
                System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr2, this.f76483g, min);
                c27434m.f77201b += min;
                int i9 = this.f76483g + min;
                this.f76483g = i9;
                if ((i9 == 128 ? 1 : null) != null) {
                    this.f76477a.m344h(0);
                    C27433l c27433l = this.f76477a;
                    int[] iArr = C27107a.f75776d;
                    int[] iArr2 = C27107a.f75774b;
                    int m349c = c27433l.m349c();
                    c27433l.m342j(40);
                    Object[] objArr2 = c27433l.m347e(5) == 16 ? 1 : null;
                    c27433l.m344h(m349c);
                    if (objArr2 != null) {
                        c27433l.m342j(16);
                        int m347e = c27433l.m347e(2);
                        Object[] objArr3 = m347e != 0 ? m347e != 1 ? m347e != 2 ? -1 : 2 : 1 : null;
                        c27433l.m342j(3);
                        int m347e2 = (c27433l.m347e(11) + 1) * 2;
                        int m347e3 = c27433l.m347e(2);
                        if (m347e3 == 3) {
                            i7 = C27107a.f75775c[c27433l.m347e(2)];
                            i6 = 3;
                            i5 = 6;
                        } else {
                            i6 = c27433l.m347e(2);
                            i5 = C27107a.f75773a[i6];
                            i7 = iArr2[m347e3];
                        }
                        int i10 = i5 * 256;
                        int m347e4 = c27433l.m347e(3);
                        boolean m348d = c27433l.m348d();
                        int i11 = iArr[m347e4] + (m348d ? 1 : 0);
                        c27433l.m342j(10);
                        if (c27433l.m348d()) {
                            c27433l.m342j(8);
                        }
                        if (m347e4 == 0) {
                            c27433l.m342j(5);
                            if (c27433l.m348d()) {
                                c27433l.m342j(8);
                            }
                        }
                        if (objArr3 == 1 && c27433l.m348d()) {
                            c27433l.m342j(16);
                        }
                        if (c27433l.m348d()) {
                            if (m347e4 > 2) {
                                c27433l.m342j(2);
                            }
                            if ((m347e4 & 1) != 0 && m347e4 > 2) {
                                c27433l.m342j(6);
                            }
                            if ((m347e4 & 4) != 0) {
                                c27433l.m342j(6);
                            }
                            if (m348d && c27433l.m348d()) {
                                c27433l.m342j(5);
                            }
                            if (objArr3 == null) {
                                if (c27433l.m348d()) {
                                    c27433l.m342j(6);
                                }
                                if (m347e4 == 0 && c27433l.m348d()) {
                                    c27433l.m342j(6);
                                }
                                if (c27433l.m348d()) {
                                    c27433l.m342j(6);
                                }
                                int m347e5 = c27433l.m347e(2);
                                if (m347e5 == 1) {
                                    c27433l.m342j(5);
                                } else if (m347e5 == 2) {
                                    c27433l.m342j(12);
                                } else if (m347e5 == 3) {
                                    int m347e6 = c27433l.m347e(5);
                                    if (c27433l.m348d()) {
                                        c27433l.m342j(5);
                                        if (c27433l.m348d()) {
                                            c27433l.m342j(4);
                                        }
                                        if (c27433l.m348d()) {
                                            c27433l.m342j(4);
                                        }
                                        if (c27433l.m348d()) {
                                            c27433l.m342j(4);
                                        }
                                        if (c27433l.m348d()) {
                                            c27433l.m342j(4);
                                        }
                                        if (c27433l.m348d()) {
                                            c27433l.m342j(4);
                                        }
                                        if (c27433l.m348d()) {
                                            c27433l.m342j(4);
                                        }
                                        if (c27433l.m348d()) {
                                            c27433l.m342j(4);
                                        }
                                        if (c27433l.m348d()) {
                                            if (c27433l.m348d()) {
                                                c27433l.m342j(4);
                                            }
                                            if (c27433l.m348d()) {
                                                c27433l.m342j(4);
                                            }
                                        }
                                    }
                                    if (c27433l.m348d()) {
                                        c27433l.m342j(5);
                                        if (c27433l.m348d()) {
                                            c27433l.m342j(7);
                                            if (c27433l.m348d()) {
                                                c27433l.m342j(8);
                                            }
                                        }
                                    }
                                    c27433l.m342j((m347e6 + 2) * 8);
                                    if (c27433l.f77198c != 0) {
                                        c27433l.f77198c = 0;
                                        c27433l.f77197b++;
                                        c27433l.m351a();
                                    }
                                }
                                if (m347e4 < 2) {
                                    if (c27433l.m348d()) {
                                        c27433l.m342j(14);
                                    }
                                    if (m347e4 == 0 && c27433l.m348d()) {
                                        c27433l.m342j(14);
                                    }
                                }
                                if (c27433l.m348d()) {
                                    if (i6 == 0) {
                                        c27433l.m342j(5);
                                    } else {
                                        for (int i12 = 0; i12 < i5; i12++) {
                                            if (c27433l.m348d()) {
                                                c27433l.m342j(5);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (c27433l.m348d()) {
                            c27433l.m342j(5);
                            if (m347e4 == 2) {
                                c27433l.m342j(4);
                            }
                            if (m347e4 >= 6) {
                                c27433l.m342j(2);
                            }
                            if (c27433l.m348d()) {
                                c27433l.m342j(8);
                            }
                            if (m347e4 == 0 && c27433l.m348d()) {
                                c27433l.m342j(8);
                            }
                            if (m347e3 < 3) {
                                c27433l.m343i();
                            }
                        }
                        if (objArr3 == null && i6 != 3) {
                            c27433l.m343i();
                        }
                        if (objArr3 == 2 && (i6 == 3 || c27433l.m348d())) {
                            c27433l.m342j(6);
                        }
                        if (c27433l.m348d() && c27433l.m347e(6) == 1 && c27433l.m347e(8) == 1) {
                            str = "audio/eac3-joc";
                            i = m347e2;
                            i2 = i11;
                            i3 = i7;
                            i4 = i10;
                        } else {
                            str = "audio/eac3";
                            i = m347e2;
                            i2 = i11;
                            i3 = i7;
                            i4 = i10;
                        }
                    } else {
                        c27433l.m342j(32);
                        int m347e7 = c27433l.m347e(2);
                        str = m347e7 == 3 ? null : "audio/ac3";
                        int m852a = C27107a.m852a(m347e7, c27433l.m347e(6));
                        c27433l.m342j(8);
                        int m347e8 = c27433l.m347e(3);
                        if ((m347e8 & 1) != 0 && m347e8 != 1) {
                            c27433l.m342j(2);
                        }
                        if ((m347e8 & 4) != 0) {
                            c27433l.m342j(2);
                        }
                        if (m347e8 == 2) {
                            c27433l.m342j(2);
                        }
                        int i13 = m347e7 < iArr2.length ? iArr2[m347e7] : -1;
                        i2 = iArr[m347e8] + (c27433l.m348d() ? 1 : 0);
                        i3 = i13;
                        i4 = 1536;
                        i = m852a;
                    }
                    Format format = this.f76486j;
                    if (format == null || i2 != format.f973v || i3 != format.f974w || str != format.f960i) {
                        Format m42842k = Format.m42842k(this.f76480d, str, null, -1, -1, i2, i3, null, null, 0, this.f76479c);
                        this.f76486j = m42842k;
                        this.f76481e.mo740c(m42842k);
                    }
                    this.f76487k = i;
                    this.f76485i = (i4 * 1000000) / this.f76486j.f974w;
                    this.f76478b.m315z(0);
                    this.f76481e.mo739d(this.f76478b, 128);
                    this.f76482f = 2;
                }
            } else if (i8 == 2) {
                int min2 = Math.min(c27434m.m340a(), this.f76487k - this.f76483g);
                this.f76481e.mo739d(c27434m, min2);
                int i14 = this.f76483g + min2;
                this.f76483g = i14;
                int i15 = this.f76487k;
                if (i14 == i15) {
                    this.f76481e.mo741b(this.f76488l, 1, i15, 0, null);
                    this.f76488l += this.f76485i;
                    this.f76482f = 0;
                }
            }
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: e */
    public void mo625e(AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        c27264d.m647a();
        this.f76480d = c27264d.m646b();
        this.f76481e = abstractC27180h.m750i(c27264d.m645c(), 1);
    }
}
