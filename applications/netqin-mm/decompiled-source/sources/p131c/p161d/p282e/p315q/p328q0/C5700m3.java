package p131c.p161d.p282e.p315q.p328q0;

import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.m3 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/m3.class */
public final class C5700m3 implements AbstractC5521b<C5695l3> {

    /* renamed from: a */
    public final AbstractC9866a<C5819u2> f18844a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC5814a> f18845b;

    public C5700m3(AbstractC9866a<C5819u2> aVar, AbstractC9866a<AbstractC5814a> aVar2) {
        this.f18844a = aVar;
        this.f18845b = aVar2;
    }

    /* renamed from: a */
    public static C5695l3 m23189a(C5819u2 u2Var, AbstractC5814a aVar) {
        return new C5695l3(u2Var, aVar);
    }

    /* renamed from: a */
    public static C5700m3 m23188a(AbstractC9866a<C5819u2> aVar, AbstractC9866a<AbstractC5814a> aVar2) {
        return new C5700m3(aVar, aVar2);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5695l3 get() {
        return m23189a(this.f18844a.get(), this.f18845b.get());
    }
}
