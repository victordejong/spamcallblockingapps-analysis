package p1727n3.p1795i.p1799b.p1800h;

import java.util.HashMap;
import p1727n3.p1795i.p1799b.C26352b;
import p1727n3.p1795i.p1799b.C26355d;
import p1727n3.p1795i.p1799b.C26358g;
import p1727n3.p1795i.p1799b.p1800h.C26361c;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
/* renamed from: n3.i.b.h.g */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/g.class */
public class C26365g extends C26363d {

    /* renamed from: H0 */
    public float f73768H0 = -1.0f;

    /* renamed from: I0 */
    public int f73769I0 = -1;

    /* renamed from: J0 */
    public int f73770J0 = -1;

    /* renamed from: K0 */
    public C26361c f73771K0 = this.f73672G;

    /* renamed from: L0 */
    public int f73772L0 = 0;

    /* renamed from: M0 */
    public boolean f73773M0;

    public C26365g() {
        this.f73681O.clear();
        this.f73681O.add(this.f73771K0);
        int length = this.f73680N.length;
        for (int i = 0; i < length; i++) {
            this.f73680N[i] = this.f73771K0;
        }
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: E */
    public boolean mo2052E() {
        return this.f73773M0;
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: F */
    public boolean mo2051F() {
        return this.f73773M0;
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: U */
    public void mo2050U(C26355d c26355d, boolean z) {
        if (this.f73684R == null) {
            return;
        }
        int m2123o = c26355d.m2123o(this.f73771K0);
        if (this.f73772L0 == 1) {
            this.f73689W = m2123o;
            this.f73690X = 0;
            m2084N(this.f73684R.m2068q());
            m2079S(0);
            return;
        }
        this.f73689W = 0;
        this.f73690X = m2123o;
        m2079S(this.f73684R.m2062w());
        m2084N(0);
    }

    /* renamed from: V */
    public void m2049V(int i) {
        C26361c c26361c = this.f73771K0;
        c26361c.f73642b = i;
        c26361c.f73643c = true;
        this.f73773M0 = true;
    }

    /* renamed from: W */
    public void m2048W(int i) {
        if (this.f73772L0 == i) {
            return;
        }
        this.f73772L0 = i;
        this.f73681O.clear();
        if (this.f73772L0 == 1) {
            this.f73771K0 = this.f73670F;
        } else {
            this.f73771K0 = this.f73672G;
        }
        this.f73681O.add(this.f73771K0);
        int length = this.f73680N.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f73680N[i2] = this.f73771K0;
        }
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: f */
    public void mo2047f(C26355d c26355d, boolean z) {
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.WRAP_CONTENT;
        e eVar = this.f73684R;
        if (eVar == null) {
            return;
        }
        Object mo2045n = eVar.mo2045n(C26361c.EnumC26362a.LEFT);
        Object mo2045n2 = eVar.mo2045n(C26361c.EnumC26362a.RIGHT);
        C26363d c26363d = this.f73684R;
        boolean z2 = c26363d != null && c26363d.f73683Q[0] == enumC26364a;
        if (this.f73772L0 == 0) {
            mo2045n = eVar.mo2045n(C26361c.EnumC26362a.TOP);
            mo2045n2 = eVar.mo2045n(C26361c.EnumC26362a.BOTTOM);
            C26363d c26363d2 = this.f73684R;
            z2 = c26363d2 != null && c26363d2.f73683Q[1] == enumC26364a;
        }
        if (this.f73773M0) {
            C26361c c26361c = this.f73771K0;
            if (c26361c.f73643c) {
                C26358g m2126l = c26355d.m2126l(c26361c);
                c26355d.m2133e(m2126l, this.f73771K0.m2104d());
                if (this.f73769I0 != -1) {
                    if (z2) {
                        c26355d.m2132f(c26355d.m2126l(mo2045n2), m2126l, 0, 5);
                    }
                } else if (this.f73770J0 != -1 && z2) {
                    C26358g m2126l2 = c26355d.m2126l(mo2045n2);
                    c26355d.m2132f(m2126l, c26355d.m2126l(mo2045n), 0, 5);
                    c26355d.m2132f(m2126l2, m2126l, 0, 5);
                }
                this.f73773M0 = false;
                return;
            }
        }
        if (this.f73769I0 != -1) {
            C26358g m2126l3 = c26355d.m2126l(this.f73771K0);
            c26355d.m2134d(m2126l3, c26355d.m2126l(mo2045n), this.f73769I0, 8);
            if (!z2) {
                return;
            }
            c26355d.m2132f(c26355d.m2126l(mo2045n2), m2126l3, 0, 5);
        } else if (this.f73770J0 != -1) {
            C26358g m2126l4 = c26355d.m2126l(this.f73771K0);
            C26358g m2126l5 = c26355d.m2126l(mo2045n2);
            c26355d.m2134d(m2126l4, m2126l5, -this.f73770J0, 8);
            if (!z2) {
                return;
            }
            c26355d.m2132f(m2126l4, c26355d.m2126l(mo2045n), 0, 5);
            c26355d.m2132f(m2126l5, m2126l4, 0, 5);
        } else if (this.f73768H0 == -1.0f) {
        } else {
            C26358g m2126l6 = c26355d.m2126l(this.f73771K0);
            C26358g m2126l7 = c26355d.m2126l(mo2045n2);
            float f = this.f73768H0;
            C26352b m2125m = c26355d.m2125m();
            m2125m.f73573d.mo2145d(m2126l6, -1.0f);
            m2125m.f73573d.mo2145d(m2126l7, f);
            c26355d.m2135c(m2125m);
        }
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: g */
    public boolean mo2046g() {
        return true;
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: k */
    public void mo2040k(C26363d c26363d, HashMap<C26363d, C26363d> hashMap) {
        super.mo2040k(c26363d, hashMap);
        C26365g c26365g = (C26365g) c26363d;
        this.f73768H0 = c26365g.f73768H0;
        this.f73769I0 = c26365g.f73769I0;
        this.f73770J0 = c26365g.f73770J0;
        m2048W(c26365g.f73772L0);
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: n */
    public C26361c mo2045n(C26361c.EnumC26362a enumC26362a) {
        switch (enumC26362a.ordinal()) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
            case 3:
                if (this.f73772L0 == 1) {
                    return this.f73771K0;
                }
                break;
            case 2:
            case 4:
                if (this.f73772L0 == 0) {
                    return this.f73771K0;
                }
                break;
        }
        throw new AssertionError(enumC26362a.name());
    }
}
