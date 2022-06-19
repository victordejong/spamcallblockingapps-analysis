package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.av */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/av.class */
final class C1813av extends AbstractC1894i {

    /* renamed from: a */
    private final AbstractC1812au f4505a;

    public C1813av(AbstractC1812au abstractC1812au) {
        C1694h.m3117b(abstractC1812au, "handle");
        this.f4505a = abstractC1812au;
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
        this.f4505a.mo2730a();
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f4505a + ']';
    }
}
