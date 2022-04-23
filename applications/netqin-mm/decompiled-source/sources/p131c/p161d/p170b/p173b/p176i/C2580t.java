package p131c.p161d.p170b.p173b.p176i;

import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p184y.AbstractC2609e;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.C2627l;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.C2631p;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.t */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/t.class */
public final class C2580t implements AbstractC2598b<C2577r> {

    /* renamed from: a */
    public final AbstractC9866a<AbstractC2541a> f9634a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC2541a> f9635b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC2609e> f9636c;

    /* renamed from: d */
    public final AbstractC9866a<C2627l> f9637d;

    /* renamed from: e */
    public final AbstractC9866a<C2631p> f9638e;

    public C2580t(AbstractC9866a<AbstractC2541a> aVar, AbstractC9866a<AbstractC2541a> aVar2, AbstractC9866a<AbstractC2609e> aVar3, AbstractC9866a<C2627l> aVar4, AbstractC9866a<C2631p> aVar5) {
        this.f9634a = aVar;
        this.f9635b = aVar2;
        this.f9636c = aVar3;
        this.f9637d = aVar4;
        this.f9638e = aVar5;
    }

    /* renamed from: a */
    public static C2577r m29480a(AbstractC2541a aVar, AbstractC2541a aVar2, AbstractC2609e eVar, C2627l lVar, C2631p pVar) {
        return new C2577r(aVar, aVar2, eVar, lVar, pVar);
    }

    /* renamed from: a */
    public static C2580t m29479a(AbstractC9866a<AbstractC2541a> aVar, AbstractC9866a<AbstractC2541a> aVar2, AbstractC9866a<AbstractC2609e> aVar3, AbstractC9866a<C2627l> aVar4, AbstractC9866a<C2631p> aVar5) {
        return new C2580t(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C2577r get() {
        return m29480a(this.f9634a.get(), this.f9635b.get(), this.f9636c.get(), this.f9637d.get(), this.f9638e.get());
    }
}
