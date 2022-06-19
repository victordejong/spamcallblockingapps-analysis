package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.bj */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bj.class */
public final class C1849bj extends AbstractC1857bp<AbstractC1850bk> {

    /* renamed from: a */
    private final AbstractC1663b<Throwable, C1775o> f4593a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1849bj(AbstractC1850bk abstractC1850bk, AbstractC1663b<? super Throwable, C1775o> abstractC1663b) {
        super(abstractC1850bk);
        C1694h.m3117b(abstractC1850bk, "job");
        C1694h.m3117b(abstractC1663b, "handler");
        this.f4593a = abstractC1663b;
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
        this.f4593a.mo138a(th);
    }

    @Override // kotlinx.coroutines.internal.C1908i
    public String toString() {
        return "InvokeOnCompletion[" + C1789ag.m2954b(this) + '@' + C1789ag.m2956a(this) + ']';
    }
}
