package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import android.app.Application;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5819u2;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.e0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/e0.class */
public final class C5774e0 implements AbstractC5521b<C5819u2> {

    /* renamed from: a */
    public final C5772d0 f19016a;

    /* renamed from: b */
    public final AbstractC9866a<Application> f19017b;

    public C5774e0(C5772d0 d0Var, AbstractC9866a<Application> aVar) {
        this.f19016a = d0Var;
        this.f19017b = aVar;
    }

    /* renamed from: a */
    public static C5774e0 m23048a(C5772d0 d0Var, AbstractC9866a<Application> aVar) {
        return new C5774e0(d0Var, aVar);
    }

    /* renamed from: a */
    public static C5819u2 m23049a(C5772d0 d0Var, Application application) {
        C5819u2 a = d0Var.m23054a(application);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5819u2 get() {
        return m23049a(this.f19016a, this.f19017b.get());
    }
}
