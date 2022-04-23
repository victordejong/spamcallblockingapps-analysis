package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import android.app.Application;
import p131c.p161d.p282e.p315q.p316o0.AbstractC5519a;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5520a;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5650d;
import p131c.p161d.p282e.p315q.p328q0.C5692l0;
import p131c.p161d.p282e.p315q.p328q0.C5823v2;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/e.class */
public final class C5773e implements AbstractC5521b<C5650d> {

    /* renamed from: a */
    public final C5771d f19012a;

    /* renamed from: b */
    public final AbstractC9866a<C5692l0> f19013b;

    /* renamed from: c */
    public final AbstractC9866a<Application> f19014c;

    /* renamed from: d */
    public final AbstractC9866a<C5823v2> f19015d;

    public C5773e(C5771d dVar, AbstractC9866a<C5692l0> aVar, AbstractC9866a<Application> aVar2, AbstractC9866a<C5823v2> aVar3) {
        this.f19012a = dVar;
        this.f19013b = aVar;
        this.f19014c = aVar2;
        this.f19015d = aVar3;
    }

    /* renamed from: a */
    public static C5650d m23051a(C5771d dVar, AbstractC5519a<C5692l0> aVar, Application application, C5823v2 v2Var) {
        C5650d a = dVar.m23059a(aVar, application, v2Var);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: a */
    public static C5773e m23050a(C5771d dVar, AbstractC9866a<C5692l0> aVar, AbstractC9866a<Application> aVar2, AbstractC9866a<C5823v2> aVar3) {
        return new C5773e(dVar, aVar, aVar2, aVar3);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5650d get() {
        return m23051a(this.f19012a, C5520a.m23639a(this.f19013b), this.f19014c.get(), this.f19015d.get());
    }
}
