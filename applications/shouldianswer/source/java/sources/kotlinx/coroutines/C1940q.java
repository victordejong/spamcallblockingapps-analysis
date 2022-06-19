package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.q */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/q.class */
public final class C1940q extends AbstractC1853bl<C1858bq> implements AbstractC1939p {

    /* renamed from: a */
    public final AbstractC1941r f4691a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1940q(C1858bq c1858bq, AbstractC1941r abstractC1941r) {
        super(c1858bq);
        C1694h.m3117b(c1858bq, "parent");
        C1694h.m3117b(abstractC1941r, "childJob");
        this.f4691a = abstractC1941r;
    }

    @Override // kotlin.p081e.p082a.AbstractC1663b
    /* renamed from: a */
    public /* bridge */ /* synthetic */ C1775o mo138a(Throwable th) {
        mo2518a(th);
        return C1775o.f4450a;
    }

    @Override // kotlinx.coroutines.AbstractC1948w
    /* renamed from: a */
    public void mo2518a(Throwable th) {
        this.f4691a.mo2526a((AbstractC1870by) this.f4596b);
    }

    @Override // kotlinx.coroutines.AbstractC1939p
    /* renamed from: b */
    public boolean mo2527b(Throwable th) {
        C1694h.m3117b(th, "cause");
        return ((C1858bq) this.f4596b).m2760e(th);
    }

    @Override // kotlinx.coroutines.internal.C1908i
    public String toString() {
        return "ChildHandle[" + this.f4691a + ']';
    }
}
