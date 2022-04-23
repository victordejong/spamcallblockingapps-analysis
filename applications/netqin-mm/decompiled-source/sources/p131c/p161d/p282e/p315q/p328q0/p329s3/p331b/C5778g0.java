package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import android.app.Application;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5819u2;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.g0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/g0.class */
public final class C5778g0 implements AbstractC5521b<C5819u2> {

    /* renamed from: a */
    public final C5772d0 f19024a;

    /* renamed from: b */
    public final AbstractC9866a<Application> f19025b;

    public C5778g0(C5772d0 d0Var, AbstractC9866a<Application> aVar) {
        this.f19024a = d0Var;
        this.f19025b = aVar;
    }

    /* renamed from: a */
    public static C5778g0 m23040a(C5772d0 d0Var, AbstractC9866a<Application> aVar) {
        return new C5778g0(d0Var, aVar);
    }

    /* renamed from: a */
    public static C5819u2 m23041a(C5772d0 d0Var, Application application) {
        C5819u2 c = d0Var.m23052c(application);
        C5523d.m23633a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5819u2 get() {
        return m23041a(this.f19024a, this.f19025b.get());
    }
}
