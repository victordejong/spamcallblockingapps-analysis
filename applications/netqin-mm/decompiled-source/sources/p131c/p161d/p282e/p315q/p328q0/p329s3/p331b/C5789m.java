package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p313o.AbstractC5473d;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
/* renamed from: c.d.e.q.q0.s3.b.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/m.class */
public final class C5789m implements AbstractC5521b<AbstractC5473d> {

    /* renamed from: a */
    public final C5785k f19035a;

    public C5789m(C5785k kVar) {
        this.f19035a = kVar;
    }

    /* renamed from: a */
    public static C5789m m23020a(C5785k kVar) {
        return new C5789m(kVar);
    }

    /* renamed from: b */
    public static AbstractC5473d m23019b(C5785k kVar) {
        AbstractC5473d b = kVar.m23027b();
        C5523d.m23633a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC5473d get() {
        return m23019b(this.f19035a);
    }
}
