package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.r3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/r3.class */
public abstract class AbstractC9049r3 extends C9043q3 {

    /* renamed from: c */
    public boolean f20590c;

    public AbstractC9049r3(C9061t3 t3Var) {
        super(t3Var);
        this.f20578b.m16202a(this);
    }

    /* renamed from: p */
    public final boolean m16317p() {
        return this.f20590c;
    }

    /* renamed from: q */
    public final void m16316q() {
        if (!m16317p()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: r */
    public abstract boolean mo16085r();

    /* renamed from: s */
    public final void m16315s() {
        if (!this.f20590c) {
            mo16085r();
            this.f20578b.m16152z();
            this.f20590c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
