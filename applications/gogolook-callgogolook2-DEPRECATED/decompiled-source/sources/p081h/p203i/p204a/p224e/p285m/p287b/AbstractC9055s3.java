package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.s3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/s3.class */
public abstract class AbstractC9055s3 extends C9048r2 {

    /* renamed from: b */
    public boolean f20635b;

    public AbstractC9055s3(C9052s0 s0Var) {
        super(s0Var);
        this.f20541a.m16293a(this);
    }

    /* renamed from: u */
    public final boolean m16227u() {
        return this.f20635b;
    }

    /* renamed from: v */
    public final void m16226v() {
        if (!m16227u()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: w */
    public final void m16225w() {
        if (!this.f20635b) {
            mo16223y();
            this.f20541a.m16300G();
            this.f20635b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: x */
    public abstract boolean mo16224x();

    /* renamed from: y */
    public void mo16223y() {
    }

    /* renamed from: z */
    public final void m16222z() {
        if (this.f20635b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!mo16224x()) {
            this.f20541a.m16300G();
            this.f20635b = true;
        }
    }
}
