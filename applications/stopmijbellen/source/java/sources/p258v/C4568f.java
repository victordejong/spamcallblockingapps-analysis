package p258v;

import p237t.C4341b;
import p237t.C4344d;
import p237t.C4351h;
import p258v.C4564c;
/* renamed from: v.f */
/* loaded from: classes-dex2jar.jar:v/f.class */
public class C4568f extends C4566d {

    /* renamed from: r0 */
    public float f14138r0 = -1.0f;

    /* renamed from: s0 */
    public int f14139s0 = -1;

    /* renamed from: t0 */
    public int f14140t0 = -1;

    /* renamed from: u0 */
    public C4564c f14141u0 = this.f14058K;

    /* renamed from: v0 */
    public int f14142v0 = 0;

    /* renamed from: w0 */
    public boolean f14143w0;

    public C4568f() {
        this.f14066S.clear();
        this.f14066S.add(this.f14141u0);
        int length = this.f14065R.length;
        for (int i = 0; i < length; i++) {
            this.f14065R[i] = this.f14141u0;
        }
    }

    @Override // p258v.C4566d
    /* renamed from: D */
    public boolean mo776D() {
        return this.f14143w0;
    }

    @Override // p258v.C4566d
    /* renamed from: E */
    public boolean mo775E() {
        return this.f14143w0;
    }

    @Override // p258v.C4566d
    /* renamed from: U */
    public void mo774U(C4344d c4344d, boolean z) {
        if (this.f14069V == null) {
            return;
        }
        int m1037o = c4344d.m1037o(this.f14141u0);
        if (this.f14142v0 == 1) {
            this.f14075a0 = m1037o;
            this.f14077b0 = 0;
            m816N(this.f14069V.m803l());
            m811S(0);
            return;
        }
        this.f14075a0 = 0;
        this.f14077b0 = m1037o;
        m811S(this.f14069V.m795u());
        m816N(0);
    }

    /* renamed from: V */
    public void m773V(int i) {
        C4564c c4564c = this.f14141u0;
        c4564c.f14031b = i;
        c4564c.f14032c = true;
        this.f14143w0 = true;
    }

    /* renamed from: W */
    public void m772W(int i) {
        if (this.f14142v0 == i) {
            return;
        }
        this.f14142v0 = i;
        this.f14066S.clear();
        if (this.f14142v0 == 1) {
            this.f14141u0 = this.f14057J;
        } else {
            this.f14141u0 = this.f14058K;
        }
        this.f14066S.add(this.f14141u0);
        int length = this.f14065R.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f14065R[i2] = this.f14141u0;
        }
    }

    @Override // p258v.C4566d
    /* renamed from: d */
    public void mo771d(C4344d c4344d, boolean z) {
        C4567e c4567e = (C4567e) this.f14069V;
        if (c4567e == null) {
            return;
        }
        Object mo769i = c4567e.mo769i(C4564c.EnumC4565a.LEFT);
        Object mo769i2 = c4567e.mo769i(C4564c.EnumC4565a.RIGHT);
        C4566d c4566d = this.f14069V;
        boolean z2 = c4566d != null && c4566d.f14068U[0] == 2;
        if (this.f14142v0 == 0) {
            mo769i = c4567e.mo769i(C4564c.EnumC4565a.TOP);
            mo769i2 = c4567e.mo769i(C4564c.EnumC4565a.BOTTOM);
            C4566d c4566d2 = this.f14069V;
            z2 = c4566d2 != null && c4566d2.f14068U[1] == 2;
        }
        if (this.f14143w0) {
            C4564c c4564c = this.f14141u0;
            if (c4564c.f14032c) {
                C4351h m1040l = c4344d.m1040l(c4564c);
                c4344d.m1047e(m1040l, this.f14141u0.m833c());
                if (this.f14139s0 != -1) {
                    if (z2) {
                        c4344d.m1046f(c4344d.m1040l(mo769i2), m1040l, 0, 5);
                    }
                } else if (this.f14140t0 != -1 && z2) {
                    C4351h m1040l2 = c4344d.m1040l(mo769i2);
                    c4344d.m1046f(m1040l, c4344d.m1040l(mo769i), 0, 5);
                    c4344d.m1046f(m1040l2, m1040l, 0, 5);
                }
                this.f14143w0 = false;
                return;
            }
        }
        if (this.f14139s0 != -1) {
            C4351h m1040l3 = c4344d.m1040l(this.f14141u0);
            c4344d.m1048d(m1040l3, c4344d.m1040l(mo769i), this.f14139s0, 8);
            if (!z2) {
                return;
            }
            c4344d.m1046f(c4344d.m1040l(mo769i2), m1040l3, 0, 5);
        } else if (this.f14140t0 != -1) {
            C4351h m1040l4 = c4344d.m1040l(this.f14141u0);
            C4351h m1040l5 = c4344d.m1040l(mo769i2);
            c4344d.m1048d(m1040l4, m1040l5, -this.f14140t0, 8);
            if (!z2) {
                return;
            }
            c4344d.m1046f(m1040l4, c4344d.m1040l(mo769i), 0, 5);
            c4344d.m1046f(m1040l5, m1040l4, 0, 5);
        } else if (this.f14138r0 == -1.0f) {
        } else {
            C4351h m1040l6 = c4344d.m1040l(this.f14141u0);
            C4351h m1040l7 = c4344d.m1040l(mo769i2);
            float f = this.f14138r0;
            C4341b m1039m = c4344d.m1039m();
            m1039m.f13536d.mo1059d(m1040l6, -1.0f);
            m1039m.f13536d.mo1059d(m1040l7, f);
            c4344d.m1049c(m1039m);
        }
    }

    @Override // p258v.C4566d
    /* renamed from: e */
    public boolean mo770e() {
        return true;
    }

    @Override // p258v.C4566d
    /* renamed from: i */
    public C4564c mo769i(C4564c.EnumC4565a enumC4565a) {
        int ordinal = enumC4565a.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        return null;
                    }
                }
            }
            if (this.f14142v0 != 0) {
                return null;
            }
            return this.f14141u0;
        }
        if (this.f14142v0 == 1) {
            return this.f14141u0;
        }
        return null;
    }
}
