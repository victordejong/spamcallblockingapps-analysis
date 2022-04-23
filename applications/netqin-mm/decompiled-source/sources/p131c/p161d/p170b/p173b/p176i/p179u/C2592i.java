package p131c.p161d.p170b.p173b.p176i.p179u;

import android.content.Context;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.u.i */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/u/i.class */
public final class C2592i implements AbstractC2598b<C2591h> {

    /* renamed from: a */
    public final AbstractC9866a<Context> f9652a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC2541a> f9653b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC2541a> f9654c;

    public C2592i(AbstractC9866a<Context> aVar, AbstractC9866a<AbstractC2541a> aVar2, AbstractC9866a<AbstractC2541a> aVar3) {
        this.f9652a = aVar;
        this.f9653b = aVar2;
        this.f9654c = aVar3;
    }

    /* renamed from: a */
    public static C2591h m29466a(Context context, AbstractC2541a aVar, AbstractC2541a aVar2) {
        return new C2591h(context, aVar, aVar2);
    }

    /* renamed from: a */
    public static C2592i m29465a(AbstractC9866a<Context> aVar, AbstractC9866a<AbstractC2541a> aVar2, AbstractC9866a<AbstractC2541a> aVar3) {
        return new C2592i(aVar, aVar2, aVar3);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C2591h get() {
        return m29466a(this.f9652a.get(), this.f9653b.get(), this.f9654c.get());
    }
}
