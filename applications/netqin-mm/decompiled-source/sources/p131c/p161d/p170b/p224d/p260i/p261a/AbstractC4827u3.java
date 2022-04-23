package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzfu;
/* renamed from: c.d.b.d.i.a.u3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/u3.class */
public abstract class AbstractC4827u3 extends C4798r1 {

    /* renamed from: b */
    public boolean f17410b;

    public AbstractC4827u3(zzfu zzfuVar) {
        super(zzfuVar);
        this.f17262a.m9068a(this);
    }

    /* renamed from: s */
    public final boolean m24877s() {
        return this.f17410b;
    }

    /* renamed from: t */
    public final void m24876t() {
        if (!m24877s()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: u */
    public final void m24875u() {
        if (this.f17410b) {
            throw new IllegalStateException("Can't initialize twice");
        } else if (!mo8854w()) {
            this.f17262a.m9054g();
            this.f17410b = true;
        }
    }

    /* renamed from: v */
    public final void m24874v() {
        if (!this.f17410b) {
            mo9175x();
            this.f17262a.m9054g();
            this.f17410b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* renamed from: w */
    public abstract boolean mo8854w();

    /* renamed from: x */
    public void mo9175x() {
    }
}
