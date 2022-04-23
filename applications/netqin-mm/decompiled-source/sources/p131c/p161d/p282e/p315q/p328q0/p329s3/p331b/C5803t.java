package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p530d.p531a.AbstractC9225e;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.t */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/t.class */
public final class C5803t implements AbstractC5521b<AbstractC9225e> {

    /* renamed from: a */
    public final C5801s f19051a;

    /* renamed from: b */
    public final AbstractC9866a<String> f19052b;

    public C5803t(C5801s sVar, AbstractC9866a<String> aVar) {
        this.f19051a = sVar;
        this.f19052b = aVar;
    }

    /* renamed from: a */
    public static C5803t m22994a(C5801s sVar, AbstractC9866a<String> aVar) {
        return new C5803t(sVar, aVar);
    }

    /* renamed from: a */
    public static AbstractC9225e m22993a(C5801s sVar, String str) {
        AbstractC9225e a = sVar.m22997a(str);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC9225e get() {
        return m22993a(this.f19051a, this.f19052b.get());
    }
}
