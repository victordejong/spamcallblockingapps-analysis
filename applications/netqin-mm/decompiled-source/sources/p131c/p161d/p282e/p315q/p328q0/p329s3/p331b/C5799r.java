package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import android.app.Application;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p530d.p541c.p570z.AbstractC9864a;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.r */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/r.class */
public final class C5799r implements AbstractC5521b<AbstractC9864a<String>> {

    /* renamed from: a */
    public final C5797q f19043a;

    /* renamed from: b */
    public final AbstractC9866a<Application> f19044b;

    public C5799r(C5797q qVar, AbstractC9866a<Application> aVar) {
        this.f19043a = qVar;
        this.f19044b = aVar;
    }

    /* renamed from: a */
    public static C5799r m23002a(C5797q qVar, AbstractC9866a<Application> aVar) {
        return new C5799r(qVar, aVar);
    }

    /* renamed from: a */
    public static AbstractC9864a<String> m23003a(C5797q qVar, Application application) {
        AbstractC9864a<String> a = qVar.m23006a(application);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC9864a<String> get() {
        return m23003a(this.f19043a, this.f19044b.get());
    }
}
