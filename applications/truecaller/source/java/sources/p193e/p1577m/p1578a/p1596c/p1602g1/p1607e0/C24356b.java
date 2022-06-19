package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import com.google.android.exoplayer2.Format;
import p193e.p1577m.p1578a.p1596c.p1598c1.C24205g;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/b.class */
public final class C24356b implements AbstractC24373j {

    /* renamed from: a */
    public final C24797s f67741a;

    /* renamed from: b */
    public final C24798t f67742b;

    /* renamed from: c */
    public final String f67743c;

    /* renamed from: d */
    public String f67744d;

    /* renamed from: e */
    public AbstractC24422s f67745e;

    /* renamed from: f */
    public int f67746f = 0;

    /* renamed from: g */
    public int f67747g;

    /* renamed from: h */
    public boolean f67748h;

    /* renamed from: i */
    public long f67749i;

    /* renamed from: j */
    public Format f67750j;

    /* renamed from: k */
    public int f67751k;

    /* renamed from: l */
    public long f67752l;

    public C24356b(String str) {
        C24797s c24797s = new C24797s(new byte[128]);
        this.f67741a = c24797s;
        this.f67742b = new C24798t(c24797s.f69500a);
        this.f67743c = str;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: a */
    public void mo5184a() {
        this.f67746f = 0;
        this.f67747g = 0;
        this.f67748h = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: b */
    public void mo5183b() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: c */
    public void mo5182c(long j, int i) {
        this.f67752l = j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: d */
    public void mo5181d(C24798t c24798t) {
        int i;
        int i2;
        int i3;
        String str;
        int i4;
        int i5;
        int i6;
        int i7;
        Object[] objArr;
        while (c24798t.m4545a() > 0) {
            int i8 = this.f67746f;
            if (i8 == 0) {
                while (true) {
                    if (c24798t.m4545a() <= 0) {
                        objArr = null;
                        break;
                    } else if (!this.f67748h) {
                        this.f67748h = c24798t.m4529q() == 11;
                    } else {
                        int m4529q = c24798t.m4529q();
                        if (m4529q == 119) {
                            this.f67748h = false;
                            objArr = 1;
                            break;
                        }
                        this.f67748h = m4529q == 11;
                    }
                }
                if (objArr != null) {
                    this.f67746f = 1;
                    byte[] bArr = this.f67742b.f69504a;
                    bArr[0] = (byte) 11;
                    bArr[1] = (byte) 119;
                    this.f67747g = 2;
                }
            } else if (i8 == 1) {
                byte[] bArr2 = this.f67742b.f69504a;
                int min = Math.min(c24798t.m4545a(), 128 - this.f67747g);
                System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr2, this.f67747g, min);
                c24798t.f69505b += min;
                int i9 = this.f67747g + min;
                this.f67747g = i9;
                if ((i9 == 128 ? 1 : null) != null) {
                    this.f67741a.m4552j(0);
                    C24797s c24797s = this.f67741a;
                    int[] iArr = C24205g.f67004d;
                    int[] iArr2 = C24205g.f67002b;
                    int m4558d = c24797s.m4558d();
                    c24797s.m4550l(40);
                    Object[] objArr2 = c24797s.m4556f(5) > 10 ? 1 : null;
                    c24797s.m4552j(m4558d);
                    if (objArr2 != null) {
                        c24797s.m4550l(16);
                        int m4556f = c24797s.m4556f(2);
                        Object[] objArr3 = m4556f != 0 ? m4556f != 1 ? m4556f != 2 ? -1 : 2 : 1 : null;
                        c24797s.m4550l(3);
                        int m4556f2 = (c24797s.m4556f(11) + 1) * 2;
                        int m4556f3 = c24797s.m4556f(2);
                        if (m4556f3 == 3) {
                            i7 = C24205g.f67003c[c24797s.m4556f(2)];
                            i6 = 3;
                            i5 = 6;
                        } else {
                            i6 = c24797s.m4556f(2);
                            i5 = C24205g.f67001a[i6];
                            i7 = iArr2[m4556f3];
                        }
                        int i10 = i5 * 256;
                        int m4556f4 = c24797s.m4556f(3);
                        boolean m4557e = c24797s.m4557e();
                        int i11 = iArr[m4556f4] + (m4557e ? 1 : 0);
                        c24797s.m4550l(10);
                        if (c24797s.m4557e()) {
                            c24797s.m4550l(8);
                        }
                        if (m4556f4 == 0) {
                            c24797s.m4550l(5);
                            if (c24797s.m4557e()) {
                                c24797s.m4550l(8);
                            }
                        }
                        if (objArr3 == 1 && c24797s.m4557e()) {
                            c24797s.m4550l(16);
                        }
                        if (c24797s.m4557e()) {
                            if (m4556f4 > 2) {
                                c24797s.m4550l(2);
                            }
                            if ((m4556f4 & 1) != 0 && m4556f4 > 2) {
                                c24797s.m4550l(6);
                            }
                            if ((m4556f4 & 4) != 0) {
                                c24797s.m4550l(6);
                            }
                            if (m4557e && c24797s.m4557e()) {
                                c24797s.m4550l(5);
                            }
                            if (objArr3 == null) {
                                if (c24797s.m4557e()) {
                                    c24797s.m4550l(6);
                                }
                                if (m4556f4 == 0 && c24797s.m4557e()) {
                                    c24797s.m4550l(6);
                                }
                                if (c24797s.m4557e()) {
                                    c24797s.m4550l(6);
                                }
                                int m4556f5 = c24797s.m4556f(2);
                                if (m4556f5 == 1) {
                                    c24797s.m4550l(5);
                                } else if (m4556f5 == 2) {
                                    c24797s.m4550l(12);
                                } else if (m4556f5 == 3) {
                                    int m4556f6 = c24797s.m4556f(5);
                                    if (c24797s.m4557e()) {
                                        c24797s.m4550l(5);
                                        if (c24797s.m4557e()) {
                                            c24797s.m4550l(4);
                                        }
                                        if (c24797s.m4557e()) {
                                            c24797s.m4550l(4);
                                        }
                                        if (c24797s.m4557e()) {
                                            c24797s.m4550l(4);
                                        }
                                        if (c24797s.m4557e()) {
                                            c24797s.m4550l(4);
                                        }
                                        if (c24797s.m4557e()) {
                                            c24797s.m4550l(4);
                                        }
                                        if (c24797s.m4557e()) {
                                            c24797s.m4550l(4);
                                        }
                                        if (c24797s.m4557e()) {
                                            c24797s.m4550l(4);
                                        }
                                        if (c24797s.m4557e()) {
                                            if (c24797s.m4557e()) {
                                                c24797s.m4550l(4);
                                            }
                                            if (c24797s.m4557e()) {
                                                c24797s.m4550l(4);
                                            }
                                        }
                                    }
                                    if (c24797s.m4557e()) {
                                        c24797s.m4550l(5);
                                        if (c24797s.m4557e()) {
                                            c24797s.m4550l(7);
                                            if (c24797s.m4557e()) {
                                                c24797s.m4550l(8);
                                            }
                                        }
                                    }
                                    c24797s.m4550l((m4556f6 + 2) * 8);
                                    c24797s.m4559c();
                                }
                                if (m4556f4 < 2) {
                                    if (c24797s.m4557e()) {
                                        c24797s.m4550l(14);
                                    }
                                    if (m4556f4 == 0 && c24797s.m4557e()) {
                                        c24797s.m4550l(14);
                                    }
                                }
                                if (c24797s.m4557e()) {
                                    if (i6 == 0) {
                                        c24797s.m4550l(5);
                                    } else {
                                        for (int i12 = 0; i12 < i5; i12++) {
                                            if (c24797s.m4557e()) {
                                                c24797s.m4550l(5);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (c24797s.m4557e()) {
                            c24797s.m4550l(5);
                            if (m4556f4 == 2) {
                                c24797s.m4550l(4);
                            }
                            if (m4556f4 >= 6) {
                                c24797s.m4550l(2);
                            }
                            if (c24797s.m4557e()) {
                                c24797s.m4550l(8);
                            }
                            if (m4556f4 == 0 && c24797s.m4557e()) {
                                c24797s.m4550l(8);
                            }
                            if (m4556f3 < 3) {
                                c24797s.m4551k();
                            }
                        }
                        if (objArr3 == null && i6 != 3) {
                            c24797s.m4551k();
                        }
                        if (objArr3 == 2 && (i6 == 3 || c24797s.m4557e())) {
                            c24797s.m4550l(6);
                        }
                        if (c24797s.m4557e() && c24797s.m4556f(6) == 1 && c24797s.m4556f(8) == 1) {
                            str = "audio/eac3-joc";
                            i3 = m4556f2;
                            i = i10;
                            i2 = i11;
                            i4 = i7;
                        } else {
                            str = "audio/eac3";
                            i3 = m4556f2;
                            i = i10;
                            i2 = i11;
                            i4 = i7;
                        }
                    } else {
                        c24797s.m4550l(32);
                        int m4556f7 = c24797s.m4556f(2);
                        str = m4556f7 == 3 ? null : "audio/ac3";
                        int m5455a = C24205g.m5455a(m4556f7, c24797s.m4556f(6));
                        c24797s.m4550l(8);
                        int m4556f8 = c24797s.m4556f(3);
                        if ((m4556f8 & 1) != 0 && m4556f8 != 1) {
                            c24797s.m4550l(2);
                        }
                        if ((m4556f8 & 4) != 0) {
                            c24797s.m4550l(2);
                        }
                        if (m4556f8 == 2) {
                            c24797s.m4550l(2);
                        }
                        i4 = m4556f7 < iArr2.length ? iArr2[m4556f7] : -1;
                        i2 = iArr[m4556f8] + (c24797s.m4557e() ? 1 : 0);
                        i = 1536;
                        i3 = m5455a;
                    }
                    Format format = this.f67750j;
                    if (format == null || i2 != format.f4860v || i4 != format.f4861w || str != format.f4847i) {
                        Format m39253g = Format.m39253g(this.f67744d, str, null, -1, -1, i2, i4, null, null, 0, this.f67743c);
                        this.f67750j = m39253g;
                        this.f67745e.mo4928b(m39253g);
                    }
                    this.f67751k = i3;
                    this.f67749i = (i * 1000000) / this.f67750j.f4861w;
                    this.f67742b.m4547C(0);
                    this.f67745e.mo4929a(this.f67742b, 128);
                    this.f67746f = 2;
                }
            } else if (i8 == 2) {
                int min2 = Math.min(c24798t.m4545a(), this.f67751k - this.f67747g);
                this.f67745e.mo4929a(c24798t, min2);
                int i13 = this.f67747g + min2;
                this.f67747g = i13;
                int i14 = this.f67751k;
                if (i13 == i14) {
                    this.f67745e.mo4927c(this.f67752l, 1, i14, 0, null);
                    this.f67752l += this.f67749i;
                    this.f67746f = 0;
                }
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: e */
    public void mo5180e(AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        c24365d.m5203a();
        this.f67744d = c24365d.m5202b();
        this.f67745e = abstractC24409i.mo4960i(c24365d.m5201c(), 1);
    }
}
