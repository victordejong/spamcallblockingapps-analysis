package p1727n3.p1868v;

import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
/* renamed from: n3.v.v0 */
/* loaded from: classes-dex2jar.jar:n3/v/v0.class */
public final class C27033v0 implements AbstractC27012l0<X> {

    /* renamed from: a */
    public final /* synthetic */ i0 f75578a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25640a f75579b;

    public C27033v0(i0 i0Var, AbstractC25640a abstractC25640a) {
        this.f75578a = i0Var;
        this.f75579b = abstractC25640a;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(X x) {
        this.f75578a.mo1000l(this.f75579b.apply(x));
    }
}
