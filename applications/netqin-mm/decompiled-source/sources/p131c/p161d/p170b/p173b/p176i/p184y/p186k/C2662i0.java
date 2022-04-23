package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.content.Context;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.y.k.i0 */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/i0.class */
public final class C2662i0 implements AbstractC2598b<C2659h0> {

    /* renamed from: a */
    public final AbstractC9866a<Context> f9789a;

    /* renamed from: b */
    public final AbstractC9866a<String> f9790b;

    /* renamed from: c */
    public final AbstractC9866a<Integer> f9791c;

    public C2662i0(AbstractC9866a<Context> aVar, AbstractC9866a<String> aVar2, AbstractC9866a<Integer> aVar3) {
        this.f9789a = aVar;
        this.f9790b = aVar2;
        this.f9791c = aVar3;
    }

    /* renamed from: a */
    public static C2659h0 m29318a(Context context, String str, int i) {
        return new C2659h0(context, str, i);
    }

    /* renamed from: a */
    public static C2662i0 m29317a(AbstractC9866a<Context> aVar, AbstractC9866a<String> aVar2, AbstractC9866a<Integer> aVar3) {
        return new C2662i0(aVar, aVar2, aVar3);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C2659h0 get() {
        return m29318a(this.f9789a.get(), this.f9790b.get(), this.f9791c.get().intValue());
    }
}
