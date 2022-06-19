package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.aw */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/aw.class */
public final class C1814aw extends AbstractC1857bp<AbstractC1850bk> {

    /* renamed from: a */
    private final AbstractC1812au f4506a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1814aw(AbstractC1850bk abstractC1850bk, AbstractC1812au abstractC1812au) {
        super(abstractC1850bk);
        C1694h.m3117b(abstractC1850bk, "job");
        C1694h.m3117b(abstractC1812au, "handle");
        this.f4506a = abstractC1812au;
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
        this.f4506a.mo2730a();
    }

    @Override // kotlinx.coroutines.internal.C1908i
    public String toString() {
        return "DisposeOnCompletion[" + this.f4506a + ']';
    }
}
