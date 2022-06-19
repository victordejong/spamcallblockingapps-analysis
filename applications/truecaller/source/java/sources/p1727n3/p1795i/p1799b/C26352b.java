package p1727n3.p1795i.p1799b;

import java.util.ArrayList;
import p1727n3.p1795i.p1799b.C26355d;
import p1727n3.p1795i.p1799b.C26358g;
/* renamed from: n3.i.b.b */
/* loaded from: classes-dex2jar.jar:n3/i/b/b.class */
public class C26352b implements C26355d.AbstractC26356a {

    /* renamed from: d */
    public AbstractC26353a f73573d;

    /* renamed from: a */
    public C26358g f73570a = null;

    /* renamed from: b */
    public float f73571b = 0.0f;

    /* renamed from: c */
    public ArrayList<C26358g> f73572c = new ArrayList<>();

    /* renamed from: e */
    public boolean f73574e = false;

    /* renamed from: n3.i.b.b$a */
    /* loaded from: classes-dex2jar.jar:n3/i/b/b$a.class */
    public interface AbstractC26353a {
        /* renamed from: a */
        C26358g mo2148a(int i);

        /* renamed from: b */
        float mo2147b(C26358g c26358g);

        /* renamed from: c */
        float mo2146c(C26352b c26352b, boolean z);

        void clear();

        /* renamed from: d */
        void mo2145d(C26358g c26358g, float f);

        /* renamed from: e */
        float mo2144e(C26358g c26358g, boolean z);

        /* renamed from: f */
        void mo2143f(float f);

        /* renamed from: g */
        void mo2142g();

        /* renamed from: h */
        void mo2141h(C26358g c26358g, float f, boolean z);

        /* renamed from: i */
        int mo2140i();

        /* renamed from: j */
        float mo2139j(int i);

        /* renamed from: k */
        boolean mo2138k(C26358g c26358g);
    }

    public C26352b() {
    }

    public C26352b(C26354c c26354c) {
        this.f73573d = new C26351a(this, c26354c);
    }

    @Override // p1727n3.p1795i.p1799b.C26355d.AbstractC26356a
    /* renamed from: a */
    public C26358g mo2116a(C26355d c26355d, boolean[] zArr) {
        return m2152i(zArr, null);
    }

    @Override // p1727n3.p1795i.p1799b.C26355d.AbstractC26356a
    /* renamed from: b */
    public void mo2115b(C26358g c26358g) {
        float f;
        int i = c26358g.f73605d;
        if (i != 1) {
            if (i == 2) {
                f = 1000.0f;
            } else if (i == 3) {
                f = 1000000.0f;
            } else if (i == 4) {
                f = 1.0E9f;
            } else if (i == 5) {
                f = 1.0E12f;
            }
            this.f73573d.mo2145d(c26358g, f);
        }
        f = 1.0f;
        this.f73573d.mo2145d(c26358g, f);
    }

    /* renamed from: c */
    public C26352b m2158c(C26355d c26355d, int i) {
        this.f73573d.mo2145d(c26355d.m2127k(i, "ep"), 1.0f);
        this.f73573d.mo2145d(c26355d.m2127k(i, "em"), -1.0f);
        return this;
    }

    @Override // p1727n3.p1795i.p1799b.C26355d.AbstractC26356a
    public void clear() {
        this.f73573d.clear();
        this.f73570a = null;
        this.f73571b = 0.0f;
    }

    /* renamed from: d */
    public C26352b m2157d(C26358g c26358g, C26358g c26358g2, C26358g c26358g3, C26358g c26358g4, float f) {
        this.f73573d.mo2145d(c26358g, -1.0f);
        this.f73573d.mo2145d(c26358g2, 1.0f);
        this.f73573d.mo2145d(c26358g3, f);
        this.f73573d.mo2145d(c26358g4, -f);
        return this;
    }

    /* renamed from: e */
    public C26352b m2156e(C26358g c26358g, C26358g c26358g2, C26358g c26358g3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f73571b = i2;
        }
        if (!z) {
            this.f73573d.mo2145d(c26358g, -1.0f);
            this.f73573d.mo2145d(c26358g2, 1.0f);
            this.f73573d.mo2145d(c26358g3, 1.0f);
        } else {
            this.f73573d.mo2145d(c26358g, 1.0f);
            this.f73573d.mo2145d(c26358g2, -1.0f);
            this.f73573d.mo2145d(c26358g3, -1.0f);
        }
        return this;
    }

    /* renamed from: f */
    public C26352b m2155f(C26358g c26358g, C26358g c26358g2, C26358g c26358g3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f73571b = i2;
        }
        if (!z) {
            this.f73573d.mo2145d(c26358g, -1.0f);
            this.f73573d.mo2145d(c26358g2, 1.0f);
            this.f73573d.mo2145d(c26358g3, -1.0f);
        } else {
            this.f73573d.mo2145d(c26358g, 1.0f);
            this.f73573d.mo2145d(c26358g2, -1.0f);
            this.f73573d.mo2145d(c26358g3, 1.0f);
        }
        return this;
    }

    /* renamed from: g */
    public C26352b m2154g(C26358g c26358g, C26358g c26358g2, C26358g c26358g3, C26358g c26358g4, float f) {
        this.f73573d.mo2145d(c26358g3, 0.5f);
        this.f73573d.mo2145d(c26358g4, 0.5f);
        this.f73573d.mo2145d(c26358g, -0.5f);
        this.f73573d.mo2145d(c26358g2, -0.5f);
        this.f73571b = -f;
        return this;
    }

    /* renamed from: h */
    public final boolean m2153h(C26358g c26358g) {
        boolean z = true;
        if (c26358g.f73613l > 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    public final C26358g m2152i(boolean[] zArr, C26358g c26358g) {
        int mo2140i = this.f73573d.mo2140i();
        C26358g c26358g2 = null;
        int i = 0;
        float f = 0.0f;
        while (true) {
            float f2 = f;
            if (i < mo2140i) {
                float mo2139j = this.f73573d.mo2139j(i);
                C26358g c26358g3 = c26358g2;
                float f3 = f2;
                if (mo2139j < 0.0f) {
                    C26358g mo2148a = this.f73573d.mo2148a(i);
                    if (zArr != null) {
                        c26358g3 = c26358g2;
                        f3 = f2;
                        if (zArr[mo2148a.f73603b]) {
                        }
                    }
                    c26358g3 = c26358g2;
                    f3 = f2;
                    if (mo2148a != c26358g) {
                        C26358g.EnumC26359a enumC26359a = mo2148a.f73610i;
                        if (enumC26359a != C26358g.EnumC26359a.SLACK) {
                            c26358g3 = c26358g2;
                            f3 = f2;
                            if (enumC26359a != C26358g.EnumC26359a.ERROR) {
                            }
                        }
                        c26358g3 = c26358g2;
                        f3 = f2;
                        if (mo2139j < f2) {
                            f3 = mo2139j;
                            c26358g3 = mo2148a;
                        }
                    }
                }
                i++;
                c26358g2 = c26358g3;
                f = f3;
            } else {
                return c26358g2;
            }
        }
    }

    @Override // p1727n3.p1795i.p1799b.C26355d.AbstractC26356a
    public boolean isEmpty() {
        return this.f73570a == null && this.f73571b == 0.0f && this.f73573d.mo2140i() == 0;
    }

    /* renamed from: j */
    public void m2151j(C26358g c26358g) {
        C26358g c26358g2 = this.f73570a;
        if (c26358g2 != null) {
            this.f73573d.mo2145d(c26358g2, -1.0f);
            this.f73570a.f73604c = -1;
            this.f73570a = null;
        }
        float mo2144e = this.f73573d.mo2144e(c26358g, true) * (-1.0f);
        this.f73570a = c26358g;
        if (mo2144e == 1.0f) {
            return;
        }
        this.f73571b /= mo2144e;
        this.f73573d.mo2143f(mo2144e);
    }

    /* renamed from: k */
    public void m2150k(C26355d c26355d, C26358g c26358g, boolean z) {
        if (!c26358g.f73607f) {
            return;
        }
        float mo2147b = this.f73573d.mo2147b(c26358g);
        this.f73571b = (c26358g.f73606e * mo2147b) + this.f73571b;
        this.f73573d.mo2144e(c26358g, z);
        if (z) {
            c26358g.m2111b(this);
        }
        if (this.f73573d.mo2140i() != 0) {
            return;
        }
        this.f73574e = true;
        c26355d.f73582a = true;
    }

    /* renamed from: l */
    public void m2149l(C26355d c26355d, C26352b c26352b, boolean z) {
        float mo2146c = this.f73573d.mo2146c(c26352b, z);
        this.f73571b = (c26352b.f73571b * mo2146c) + this.f73571b;
        if (z) {
            c26352b.f73570a.m2111b(this);
        }
        if (this.f73570a == null || this.f73573d.mo2140i() != 0) {
            return;
        }
        this.f73574e = true;
        c26355d.f73582a = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.C26352b.toString():java.lang.String");
    }
}
