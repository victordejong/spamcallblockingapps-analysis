package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.p1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/p1.class */
public abstract class AbstractC9035p1 extends C9029o1 {

    /* renamed from: b */
    public boolean f20559b;

    public AbstractC9035p1(C9052s0 s0Var) {
        super(s0Var);
        this.f20541a.m16296a(this);
    }

    /* renamed from: m */
    public final boolean m16343m() {
        return this.f20559b;
    }

    /* renamed from: n */
    public final void m16342n() {
        if (!m16343m()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: o */
    public final void m16341o() {
        if (!this.f20559b) {
            mo16340q();
            this.f20541a.m16300G();
            this.f20559b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: p */
    public abstract boolean mo16126p();

    /* renamed from: q */
    public void mo16340q() {
    }

    /* renamed from: r */
    public final void m16339r() {
        if (this.f20559b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!mo16126p()) {
            this.f20541a.m16300G();
            this.f20559b = true;
        }
    }
}
