package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.y.k.c0 */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/c0.class */
public final class C2645c0 implements AbstractC2598b<C2639b0> {

    /* renamed from: a */
    public final AbstractC9866a<AbstractC2541a> f9769a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC2541a> f9770b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC2646d> f9771c;

    /* renamed from: d */
    public final AbstractC9866a<C2659h0> f9772d;

    public C2645c0(AbstractC9866a<AbstractC2541a> aVar, AbstractC9866a<AbstractC2541a> aVar2, AbstractC9866a<AbstractC2646d> aVar3, AbstractC9866a<C2659h0> aVar4) {
        this.f9769a = aVar;
        this.f9770b = aVar2;
        this.f9771c = aVar3;
        this.f9772d = aVar4;
    }

    /* renamed from: a */
    public static C2639b0 m29360a(AbstractC2541a aVar, AbstractC2541a aVar2, Object obj, Object obj2) {
        return new C2639b0(aVar, aVar2, (AbstractC2646d) obj, (C2659h0) obj2);
    }

    /* renamed from: a */
    public static C2645c0 m29359a(AbstractC9866a<AbstractC2541a> aVar, AbstractC9866a<AbstractC2541a> aVar2, AbstractC9866a<AbstractC2646d> aVar3, AbstractC9866a<C2659h0> aVar4) {
        return new C2645c0(aVar, aVar2, aVar3, aVar4);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C2639b0 get() {
        return m29360a(this.f9769a.get(), this.f9770b.get(), this.f9771c.get(), this.f9772d.get());
    }
}
