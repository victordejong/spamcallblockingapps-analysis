package p269w;

import p258v.C4566d;
import p258v.C4568f;
/* renamed from: w.j */
/* loaded from: classes-dex2jar.jar:w/j.class */
public class C4704j extends AbstractC4711p {
    public C4704j(C4566d c4566d) {
        super(c4566d);
        c4566d.f14080d.mo556f();
        c4566d.f14082e.mo556f();
        this.f14559f = ((C4568f) c4566d).f14142v0;
    }

    @Override // p269w.AbstractC4711p, p269w.AbstractC4698d
    /* renamed from: a */
    public void mo561a(AbstractC4698d abstractC4698d) {
        C4700f c4700f = this.f14561h;
        if (c4700f.f14528c && !c4700f.f14535j) {
            this.f14561h.mo583c((int) ((c4700f.f14537l.get(0).f14532g * ((C4568f) this.f14555b).f14138r0) + 0.5f));
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: d */
    public void mo558d() {
        C4566d c4566d = this.f14555b;
        C4568f c4568f = (C4568f) c4566d;
        int i = c4568f.f14139s0;
        int i2 = c4568f.f14140t0;
        if (c4568f.f14142v0 == 1) {
            if (i != -1) {
                this.f14561h.f14537l.add(c4566d.f14069V.f14080d.f14561h);
                this.f14555b.f14069V.f14080d.f14561h.f14536k.add(this.f14561h);
                this.f14561h.f14531f = i;
            } else if (i2 != -1) {
                this.f14561h.f14537l.add(c4566d.f14069V.f14080d.f14562i);
                this.f14555b.f14069V.f14080d.f14562i.f14536k.add(this.f14561h);
                this.f14561h.f14531f = -i2;
            } else {
                C4700f c4700f = this.f14561h;
                c4700f.f14527b = true;
                c4700f.f14537l.add(c4566d.f14069V.f14080d.f14562i);
                this.f14555b.f14069V.f14080d.f14562i.f14536k.add(this.f14561h);
            }
            m572m(this.f14555b.f14080d.f14561h);
            m572m(this.f14555b.f14080d.f14562i);
            return;
        }
        if (i != -1) {
            this.f14561h.f14537l.add(c4566d.f14069V.f14082e.f14561h);
            this.f14555b.f14069V.f14082e.f14561h.f14536k.add(this.f14561h);
            this.f14561h.f14531f = i;
        } else if (i2 != -1) {
            this.f14561h.f14537l.add(c4566d.f14069V.f14082e.f14562i);
            this.f14555b.f14069V.f14082e.f14562i.f14536k.add(this.f14561h);
            this.f14561h.f14531f = -i2;
        } else {
            C4700f c4700f2 = this.f14561h;
            c4700f2.f14527b = true;
            c4700f2.f14537l.add(c4566d.f14069V.f14082e.f14562i);
            this.f14555b.f14069V.f14082e.f14562i.f14536k.add(this.f14561h);
        }
        m572m(this.f14555b.f14082e.f14561h);
        m572m(this.f14555b.f14082e.f14562i);
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: e */
    public void mo557e() {
        C4566d c4566d = this.f14555b;
        if (((C4568f) c4566d).f14142v0 == 1) {
            c4566d.f14075a0 = this.f14561h.f14532g;
        } else {
            c4566d.f14077b0 = this.f14561h.f14532g;
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: f */
    public void mo556f() {
        this.f14561h.m584b();
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: k */
    public boolean mo551k() {
        return false;
    }

    /* renamed from: m */
    public final void m572m(C4700f c4700f) {
        this.f14561h.f14536k.add(c4700f);
        c4700f.f14537l.add(this.f14561h);
    }
}
