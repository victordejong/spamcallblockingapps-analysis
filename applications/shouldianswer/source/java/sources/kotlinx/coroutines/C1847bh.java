package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.bh */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bh.class */
final class C1847bh extends AbstractC1894i {

    /* renamed from: a */
    private final AbstractC1663b<Throwable, C1775o> f4590a;

    /* JADX WARN: Multi-variable type inference failed */
    public C1847bh(AbstractC1663b<? super Throwable, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "handler");
        this.f4590a = abstractC1663b;
    }

    @Override // kotlin.p081e.p082a.AbstractC1663b
    /* renamed from: a */
    public /* bridge */ /* synthetic */ C1775o mo138a(Throwable th) {
        mo2556a(th);
        return C1775o.f4450a;
    }

    @Override // kotlinx.coroutines.AbstractC1933j
    /* renamed from: a */
    public void mo2556a(Throwable th) {
        this.f4590a.mo138a(th);
    }

    public String toString() {
        return "InvokeOnCancel[" + C1789ag.m2954b(this.f4590a) + '@' + C1789ag.m2956a(this) + ']';
    }
}
