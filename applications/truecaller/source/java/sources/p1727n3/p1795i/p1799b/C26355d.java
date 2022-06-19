package p1727n3.p1795i.p1799b;

import java.util.Arrays;
import java.util.Objects;
import p1727n3.p1795i.p1799b.C26352b;
import p1727n3.p1795i.p1799b.C26358g;
import p1727n3.p1795i.p1799b.p1800h.C26361c;
/* renamed from: n3.i.b.d */
/* loaded from: classes-dex2jar.jar:n3/i/b/d.class */
public class C26355d {

    /* renamed from: p */
    public static boolean f73579p = false;

    /* renamed from: q */
    public static int f73580q = 1000;

    /* renamed from: r */
    public static long f73581r;

    /* renamed from: c */
    public AbstractC26356a f73584c;

    /* renamed from: f */
    public C26352b[] f73587f;

    /* renamed from: l */
    public final C26354c f73593l;

    /* renamed from: o */
    public AbstractC26356a f73596o;

    /* renamed from: a */
    public boolean f73582a = false;

    /* renamed from: b */
    public int f73583b = 0;

    /* renamed from: d */
    public int f73585d = 32;

    /* renamed from: e */
    public int f73586e = 32;

    /* renamed from: g */
    public boolean f73588g = false;

    /* renamed from: h */
    public boolean[] f73589h = new boolean[32];

    /* renamed from: i */
    public int f73590i = 1;

    /* renamed from: j */
    public int f73591j = 0;

    /* renamed from: k */
    public int f73592k = 32;

    /* renamed from: m */
    public C26358g[] f73594m = new C26358g[f73580q];

    /* renamed from: n */
    public int f73595n = 0;

    /* renamed from: n3.i.b.d$a */
    /* loaded from: classes-dex2jar.jar:n3/i/b/d$a.class */
    public interface AbstractC26356a {
        /* renamed from: a */
        C26358g mo2116a(C26355d c26355d, boolean[] zArr);

        /* renamed from: b */
        void mo2115b(C26358g c26358g);

        void clear();

        boolean isEmpty();
    }

    public C26355d() {
        this.f73587f = null;
        this.f73587f = new C26352b[32];
        m2118t();
        C26354c c26354c = new C26354c();
        this.f73593l = c26354c;
        this.f73584c = new f(c26354c);
        this.f73596o = new C26352b(c26354c);
    }

    /* renamed from: a */
    public final C26358g m2137a(C26358g.EnumC26359a enumC26359a, String str) {
        C26358g c26358g;
        C26358g m2114a = this.f73593l.f73577c.m2114a();
        if (m2114a == null) {
            C26358g c26358g2 = new C26358g(enumC26359a);
            c26358g2.f73610i = enumC26359a;
            c26358g = c26358g2;
        } else {
            m2114a.m2110c();
            m2114a.f73610i = enumC26359a;
            c26358g = m2114a;
        }
        int i = this.f73595n;
        int i2 = f73580q;
        if (i >= i2) {
            int i3 = i2 * 2;
            f73580q = i3;
            this.f73594m = (C26358g[]) Arrays.copyOf(this.f73594m, i3);
        }
        C26358g[] c26358gArr = this.f73594m;
        int i4 = this.f73595n;
        this.f73595n = i4 + 1;
        c26358gArr[i4] = c26358g;
        return c26358g;
    }

    /* renamed from: b */
    public void m2136b(C26358g c26358g, C26358g c26358g2, int i, float f, C26358g c26358g3, C26358g c26358g4, int i2, int i3) {
        C26352b m2125m = m2125m();
        if (c26358g2 == c26358g3) {
            m2125m.f73573d.mo2145d(c26358g, 1.0f);
            m2125m.f73573d.mo2145d(c26358g4, 1.0f);
            m2125m.f73573d.mo2145d(c26358g2, -2.0f);
        } else if (f == 0.5f) {
            m2125m.f73573d.mo2145d(c26358g, 1.0f);
            m2125m.f73573d.mo2145d(c26358g2, -1.0f);
            m2125m.f73573d.mo2145d(c26358g3, -1.0f);
            m2125m.f73573d.mo2145d(c26358g4, 1.0f);
            if (i > 0 || i2 > 0) {
                m2125m.f73571b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            m2125m.f73573d.mo2145d(c26358g, -1.0f);
            m2125m.f73573d.mo2145d(c26358g2, 1.0f);
            m2125m.f73571b = i;
        } else if (f >= 1.0f) {
            m2125m.f73573d.mo2145d(c26358g4, -1.0f);
            m2125m.f73573d.mo2145d(c26358g3, 1.0f);
            m2125m.f73571b = -i2;
        } else {
            C26352b.AbstractC26353a abstractC26353a = m2125m.f73573d;
            float f2 = 1.0f - f;
            abstractC26353a.mo2145d(c26358g, f2 * 1.0f);
            m2125m.f73573d.mo2145d(c26358g2, f2 * (-1.0f));
            m2125m.f73573d.mo2145d(c26358g3, (-1.0f) * f);
            m2125m.f73573d.mo2145d(c26358g4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                m2125m.f73571b = (i2 * f) + ((-i) * f2);
            }
        }
        if (i3 != 8) {
            m2125m.m2158c(this, i3);
        }
        m2135c(m2125m);
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0435 A[RETURN] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2135c(p1727n3.p1795i.p1799b.C26352b r6) {
        /*
            Method dump skipped, instructions count: 1093
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.C26355d.m2135c(n3.i.b.b):void");
    }

    /* renamed from: d */
    public C26352b m2134d(C26358g c26358g, C26358g c26358g2, int i, int i2) {
        if (i2 == 8 && c26358g2.f73607f && c26358g.f73604c == -1) {
            c26358g.m2109d(this, c26358g2.f73606e + i);
            return null;
        }
        C26352b m2125m = m2125m();
        boolean z = false;
        if (i != 0) {
            z = false;
            int i3 = i;
            if (i < 0) {
                i3 = i * (-1);
                z = true;
            }
            m2125m.f73571b = i3;
        }
        if (!z) {
            m2125m.f73573d.mo2145d(c26358g, -1.0f);
            m2125m.f73573d.mo2145d(c26358g2, 1.0f);
        } else {
            m2125m.f73573d.mo2145d(c26358g, 1.0f);
            m2125m.f73573d.mo2145d(c26358g2, -1.0f);
        }
        if (i2 != 8) {
            m2125m.m2158c(this, i2);
        }
        m2135c(m2125m);
        return m2125m;
    }

    /* renamed from: e */
    public void m2133e(C26358g c26358g, int i) {
        int i2 = c26358g.f73604c;
        if (i2 == -1) {
            c26358g.m2109d(this, i);
            for (int i3 = 0; i3 < this.f73583b + 1; i3++) {
                C26358g c26358g2 = this.f73593l.f73578d[i3];
            }
        } else if (i2 == -1) {
            C26352b m2125m = m2125m();
            m2125m.f73570a = c26358g;
            float f = i;
            c26358g.f73606e = f;
            m2125m.f73571b = f;
            m2125m.f73574e = true;
            m2135c(m2125m);
        } else {
            C26352b c26352b = this.f73587f[i2];
            if (c26352b.f73574e) {
                c26352b.f73571b = i;
            } else if (c26352b.f73573d.mo2140i() == 0) {
                c26352b.f73574e = true;
                c26352b.f73571b = i;
            } else {
                C26352b m2125m2 = m2125m();
                if (i < 0) {
                    m2125m2.f73571b = i * (-1);
                    m2125m2.f73573d.mo2145d(c26358g, 1.0f);
                } else {
                    m2125m2.f73571b = i;
                    m2125m2.f73573d.mo2145d(c26358g, -1.0f);
                }
                m2135c(m2125m2);
            }
        }
    }

    /* renamed from: f */
    public void m2132f(C26358g c26358g, C26358g c26358g2, int i, int i2) {
        C26352b m2125m = m2125m();
        C26358g m2124n = m2124n();
        m2124n.f73605d = 0;
        m2125m.m2156e(c26358g, c26358g2, m2124n, i);
        if (i2 != 8) {
            int mo2147b = (int) (m2125m.f73573d.mo2147b(m2124n) * (-1.0f));
            m2125m.f73573d.mo2145d(m2127k(i2, null), mo2147b);
        }
        m2135c(m2125m);
    }

    /* renamed from: g */
    public void m2131g(C26358g c26358g, C26358g c26358g2, int i, int i2) {
        C26352b m2125m = m2125m();
        C26358g m2124n = m2124n();
        m2124n.f73605d = 0;
        m2125m.m2155f(c26358g, c26358g2, m2124n, i);
        if (i2 != 8) {
            int mo2147b = (int) (m2125m.f73573d.mo2147b(m2124n) * (-1.0f));
            m2125m.f73573d.mo2145d(m2127k(i2, null), mo2147b);
        }
        m2135c(m2125m);
    }

    /* renamed from: h */
    public void m2130h(C26358g c26358g, C26358g c26358g2, C26358g c26358g3, C26358g c26358g4, float f, int i) {
        C26352b m2125m = m2125m();
        m2125m.m2157d(c26358g, c26358g2, c26358g3, c26358g4, f);
        if (i != 8) {
            m2125m.m2158c(this, i);
        }
        m2135c(m2125m);
    }

    /* renamed from: i */
    public final void m2129i(C26352b c26352b) {
        int i;
        if (c26352b.f73574e) {
            c26352b.f73570a.m2109d(this, c26352b.f73571b);
        } else {
            C26352b[] c26352bArr = this.f73587f;
            int i2 = this.f73591j;
            c26352bArr[i2] = c26352b;
            C26358g c26358g = c26352b.f73570a;
            c26358g.f73604c = i2;
            this.f73591j = i2 + 1;
            c26358g.m2108e(this, c26352b);
        }
        if (this.f73582a) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= this.f73591j) {
                    this.f73582a = false;
                    return;
                }
                if (this.f73587f[i4] == null) {
                    System.out.println("WTF");
                }
                C26352b[] c26352bArr2 = this.f73587f;
                int i5 = i4;
                if (c26352bArr2[i4] != null) {
                    i5 = i4;
                    if (c26352bArr2[i4].f73574e) {
                        C26352b c26352b2 = c26352bArr2[i4];
                        c26352b2.f73570a.m2109d(this, c26352b2.f73571b);
                        this.f73593l.f73576b.m2113b(c26352b2);
                        this.f73587f[i4] = null;
                        int i6 = i4 + 1;
                        int i7 = i6;
                        while (true) {
                            i = this.f73591j;
                            if (i6 >= i) {
                                break;
                            }
                            C26352b[] c26352bArr3 = this.f73587f;
                            int i8 = i6 - 1;
                            c26352bArr3[i8] = c26352bArr3[i6];
                            if (c26352bArr3[i8].f73570a.f73604c == i6) {
                                c26352bArr3[i8].f73570a.f73604c = i8;
                            }
                            i7 = i6;
                            i6++;
                        }
                        if (i7 < i) {
                            this.f73587f[i7] = null;
                        }
                        this.f73591j = i - 1;
                        i5 = i4 - 1;
                    }
                }
                i3 = i5 + 1;
            }
        }
    }

    /* renamed from: j */
    public final void m2128j() {
        for (int i = 0; i < this.f73591j; i++) {
            C26352b c26352b = this.f73587f[i];
            c26352b.f73570a.f73606e = c26352b.f73571b;
        }
    }

    /* renamed from: k */
    public C26358g m2127k(int i, String str) {
        if (this.f73590i + 1 >= this.f73586e) {
            m2122p();
        }
        C26358g m2137a = m2137a(C26358g.EnumC26359a.ERROR, str);
        int i2 = this.f73583b + 1;
        this.f73583b = i2;
        this.f73590i++;
        m2137a.f73603b = i2;
        m2137a.f73605d = i;
        this.f73593l.f73578d[i2] = m2137a;
        this.f73584c.mo2115b(m2137a);
        return m2137a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        if (r4.f73593l.f73578d[r0] == null) goto L19;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p1727n3.p1795i.p1799b.C26358g m2126l(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r4
            int r0 = r0.f73590i
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.f73586e
            if (r0 < r1) goto L19
            r0 = r4
            r0.m2122p()
        L19:
            r0 = r5
            boolean r0 = r0 instanceof p1727n3.p1795i.p1799b.p1800h.C26361c
            if (r0 == 0) goto L99
            r0 = r5
            n3.i.b.h.c r0 = (p1727n3.p1795i.p1799b.p1800h.C26361c) r0
            r7 = r0
            r0 = r7
            n3.i.b.g r0 = r0.f73649i
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L39
            r0 = r7
            r0.m2096l()
            r0 = r7
            n3.i.b.g r0 = r0.f73649i
            r5 = r0
        L39:
            r0 = r5
            int r0 = r0.f73603b
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L5d
            r0 = r8
            r1 = r4
            int r1 = r1.f73583b
            if (r0 > r1) goto L5d
            r0 = r5
            r6 = r0
            r0 = r4
            n3.i.b.c r0 = r0.f73593l
            n3.i.b.g[] r0 = r0.f73578d
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L99
        L5d:
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L67
            r0 = r5
            r0.m2110c()
        L67:
            r0 = r4
            int r0 = r0.f73583b
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r4
            r1 = r8
            r0.f73583b = r1
            r0 = r4
            r1 = r4
            int r1 = r1.f73590i
            r2 = 1
            int r1 = r1 + r2
            r0.f73590i = r1
            r0 = r5
            r1 = r8
            r0.f73603b = r1
            r0 = r5
            n3.i.b.g$a r1 = p1727n3.p1795i.p1799b.C26358g.EnumC26359a.UNRESTRICTED
            r0.f73610i = r1
            r0 = r4
            n3.i.b.c r0 = r0.f73593l
            n3.i.b.g[] r0 = r0.f73578d
            r1 = r8
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L99:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.C26355d.m2126l(java.lang.Object):n3.i.b.g");
    }

    /* renamed from: m */
    public C26352b m2125m() {
        C26352b m2114a = this.f73593l.f73576b.m2114a();
        if (m2114a == null) {
            m2114a = new C26352b(this.f73593l);
            f73581r++;
        } else {
            m2114a.f73570a = null;
            m2114a.f73573d.clear();
            m2114a.f73571b = 0.0f;
            m2114a.f73574e = false;
        }
        C26358g.f73601n++;
        return m2114a;
    }

    /* renamed from: n */
    public C26358g m2124n() {
        if (this.f73590i + 1 >= this.f73586e) {
            m2122p();
        }
        C26358g m2137a = m2137a(C26358g.EnumC26359a.SLACK, null);
        int i = this.f73583b + 1;
        this.f73583b = i;
        this.f73590i++;
        m2137a.f73603b = i;
        this.f73593l.f73578d[i] = m2137a;
        return m2137a;
    }

    /* renamed from: o */
    public int m2123o(Object obj) {
        C26358g c26358g = ((C26361c) obj).f73649i;
        if (c26358g != null) {
            return (int) (c26358g.f73606e + 0.5f);
        }
        return 0;
    }

    /* renamed from: p */
    public final void m2122p() {
        int i = this.f73585d * 2;
        this.f73585d = i;
        this.f73587f = (C26352b[]) Arrays.copyOf(this.f73587f, i);
        C26354c c26354c = this.f73593l;
        c26354c.f73578d = (C26358g[]) Arrays.copyOf(c26354c.f73578d, this.f73585d);
        int i2 = this.f73585d;
        this.f73589h = new boolean[i2];
        this.f73586e = i2;
        this.f73592k = i2;
    }

    /* renamed from: q */
    public void m2121q() throws Exception {
        boolean z;
        if (this.f73584c.isEmpty()) {
            m2128j();
        } else if (!this.f73588g) {
            m2120r(this.f73584c);
        } else {
            int i = 0;
            while (true) {
                if (i >= this.f73591j) {
                    z = true;
                    break;
                } else if (!this.f73587f[i].f73574e) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                m2120r(this.f73584c);
            } else {
                m2128j();
            }
        }
    }

    /* renamed from: r */
    public void m2120r(AbstractC26356a abstractC26356a) throws Exception {
        boolean z;
        int i;
        int i2;
        int i3;
        float f;
        int i4;
        int i5;
        int i6;
        float f2;
        int i7;
        C26358g.EnumC26359a enumC26359a = C26358g.EnumC26359a.UNRESTRICTED;
        int i8 = 0;
        while (true) {
            if (i8 >= this.f73591j) {
                z = false;
                break;
            }
            C26352b[] c26352bArr = this.f73587f;
            if (c26352bArr[i8].f73570a.f73610i != enumC26359a && c26352bArr[i8].f73571b < 0.0f) {
                z = true;
                break;
            }
            i8++;
        }
        if (z) {
            boolean z2 = false;
            int i9 = 0;
            while (true) {
                int i10 = i9;
                if (z2) {
                    break;
                }
                int i11 = i10 + 1;
                float f3 = Float.MAX_VALUE;
                int i12 = 0;
                int i13 = -1;
                int i14 = -1;
                int i15 = 0;
                while (true) {
                    int i16 = i15;
                    if (i12 >= this.f73591j) {
                        break;
                    }
                    C26352b c26352b = this.f73587f[i12];
                    if (c26352b.f73570a.f73610i == enumC26359a) {
                        f = f3;
                        i3 = i13;
                        i2 = i14;
                        i = i16;
                    } else if (c26352b.f73574e) {
                        f = f3;
                        i3 = i13;
                        i2 = i14;
                        i = i16;
                    } else {
                        f = f3;
                        i3 = i13;
                        i2 = i14;
                        i = i16;
                        if (c26352b.f73571b < 0.0f) {
                            int mo2140i = c26352b.f73573d.mo2140i();
                            int i17 = 0;
                            while (true) {
                                f = f3;
                                i3 = i13;
                                i2 = i14;
                                i = i16;
                                if (i17 < mo2140i) {
                                    C26358g mo2148a = c26352b.f73573d.mo2148a(i17);
                                    float mo2147b = c26352b.f73573d.mo2147b(mo2148a);
                                    if (mo2147b <= 0.0f) {
                                        f2 = f3;
                                        i6 = i13;
                                        i4 = i14;
                                        i5 = i16;
                                    } else {
                                        int i18 = i14;
                                        int i19 = 0;
                                        while (true) {
                                            f2 = f3;
                                            i6 = i13;
                                            i4 = i18;
                                            i5 = i16;
                                            if (i19 < 9) {
                                                float f4 = mo2148a.f73608g[i19] / mo2147b;
                                                if (f4 >= f3 || i19 != i16) {
                                                    i7 = i16;
                                                    if (i19 <= i16) {
                                                        i19++;
                                                        i16 = i7;
                                                    }
                                                }
                                                i18 = mo2148a.f73603b;
                                                i7 = i19;
                                                f3 = f4;
                                                i13 = i12;
                                                i19++;
                                                i16 = i7;
                                            }
                                        }
                                    }
                                    i17++;
                                    f3 = f2;
                                    i13 = i6;
                                    i14 = i4;
                                    i16 = i5;
                                }
                            }
                        }
                    }
                    i12++;
                    f3 = f;
                    i13 = i3;
                    i14 = i2;
                    i15 = i;
                }
                if (i13 != -1) {
                    C26352b c26352b2 = this.f73587f[i13];
                    c26352b2.f73570a.f73604c = -1;
                    c26352b2.m2151j(this.f73593l.f73578d[i14]);
                    C26358g c26358g = c26352b2.f73570a;
                    c26358g.f73604c = i13;
                    c26358g.m2108e(this, c26352b2);
                } else {
                    z2 = true;
                }
                if (i11 > this.f73590i / 2) {
                    z2 = true;
                }
                i9 = i11;
            }
        }
        m2119s(abstractC26356a);
        m2128j();
    }

    /* renamed from: s */
    public final int m2119s(AbstractC26356a abstractC26356a) {
        int i;
        int i2;
        float f;
        for (int i3 = 0; i3 < this.f73590i; i3++) {
            this.f73589h[i3] = false;
        }
        boolean z = false;
        int i4 = 0;
        while (!z) {
            int i5 = i4 + 1;
            if (i5 >= this.f73590i * 2) {
                return i5;
            }
            C26358g c26358g = ((C26352b) abstractC26356a).f73570a;
            if (c26358g != null) {
                this.f73589h[c26358g.f73603b] = true;
            }
            C26358g mo2116a = abstractC26356a.mo2116a(this, this.f73589h);
            if (mo2116a != null) {
                boolean[] zArr = this.f73589h;
                int i6 = mo2116a.f73603b;
                if (zArr[i6]) {
                    return i5;
                }
                zArr[i6] = true;
            }
            if (mo2116a != null) {
                float f2 = Float.MAX_VALUE;
                int i7 = 0;
                int i8 = -1;
                while (true) {
                    i = i8;
                    if (i7 >= this.f73591j) {
                        break;
                    }
                    C26352b c26352b = this.f73587f[i7];
                    if (c26352b.f73570a.f73610i == C26358g.EnumC26359a.UNRESTRICTED) {
                        f = f2;
                        i2 = i;
                    } else if (c26352b.f73574e) {
                        f = f2;
                        i2 = i;
                    } else {
                        f = f2;
                        i2 = i;
                        if (c26352b.f73573d.mo2138k(mo2116a)) {
                            float mo2147b = c26352b.f73573d.mo2147b(mo2116a);
                            f = f2;
                            i2 = i;
                            if (mo2147b < 0.0f) {
                                float f3 = (-c26352b.f73571b) / mo2147b;
                                f = f2;
                                i2 = i;
                                if (f3 < f2) {
                                    i2 = i7;
                                    f = f3;
                                }
                            }
                        }
                    }
                    i7++;
                    f2 = f;
                    i8 = i2;
                }
                i4 = i5;
                if (i > -1) {
                    C26352b c26352b2 = this.f73587f[i];
                    c26352b2.f73570a.f73604c = -1;
                    c26352b2.m2151j(mo2116a);
                    C26358g c26358g2 = c26352b2.f73570a;
                    c26358g2.f73604c = i;
                    c26358g2.m2108e(this, c26352b2);
                    i4 = i5;
                }
            } else {
                z = true;
                i4 = i5;
            }
        }
        return i4;
    }

    /* renamed from: t */
    public final void m2118t() {
        for (int i = 0; i < this.f73591j; i++) {
            C26352b c26352b = this.f73587f[i];
            if (c26352b != null) {
                this.f73593l.f73576b.m2113b(c26352b);
            }
            this.f73587f[i] = null;
        }
    }

    /* renamed from: u */
    public void m2117u() {
        C26354c c26354c;
        int i = 0;
        while (true) {
            c26354c = this.f73593l;
            C26358g[] c26358gArr = c26354c.f73578d;
            if (i >= c26358gArr.length) {
                break;
            }
            C26358g c26358g = c26358gArr[i];
            if (c26358g != null) {
                c26358g.m2110c();
            }
            i++;
        }
        C26357e<C26358g> c26357e = c26354c.f73577c;
        C26358g[] c26358gArr2 = this.f73594m;
        int i2 = this.f73595n;
        Objects.requireNonNull(c26357e);
        int i3 = i2;
        if (i2 > c26358gArr2.length) {
            i3 = c26358gArr2.length;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            C26358g c26358g2 = c26358gArr2[i4];
            int i5 = c26357e.f73598b;
            Object[] objArr = c26357e.f73597a;
            if (i5 < objArr.length) {
                objArr[i5] = c26358g2;
                c26357e.f73598b = i5 + 1;
            }
        }
        this.f73595n = 0;
        Arrays.fill(this.f73593l.f73578d, (Object) null);
        this.f73583b = 0;
        this.f73584c.clear();
        this.f73590i = 1;
        for (int i6 = 0; i6 < this.f73591j; i6++) {
            C26352b[] c26352bArr = this.f73587f;
            if (c26352bArr[i6] != null) {
                Objects.requireNonNull(c26352bArr[i6]);
            }
        }
        m2118t();
        this.f73591j = 0;
        this.f73596o = new C26352b(this.f73593l);
    }
}
