package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import android.app.Application;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
/* renamed from: c.d.e.q.q0.s3.b.p */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/p.class */
public final class C5795p implements AbstractC5521b<Application> {

    /* renamed from: a */
    public final C5791n f19040a;

    public C5795p(C5791n nVar) {
        this.f19040a = nVar;
    }

    /* renamed from: a */
    public static C5795p m23009a(C5791n nVar) {
        return new C5795p(nVar);
    }

    /* renamed from: b */
    public static Application m23008b(C5791n nVar) {
        Application b = nVar.m23015b();
        C5523d.m23633a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // p571e.p572a.AbstractC9866a
    public Application get() {
        return m23008b(this.f19040a);
    }
}
