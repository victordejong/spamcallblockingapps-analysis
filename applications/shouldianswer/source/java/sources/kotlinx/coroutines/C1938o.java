package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.o */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/o.class */
public final class C1938o extends AbstractC1853bl<AbstractC1850bk> {

    /* renamed from: a */
    public final C1935l<?> f4690a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1938o(AbstractC1850bk abstractC1850bk, C1935l<?> c1935l) {
        super(abstractC1850bk);
        C1694h.m3117b(abstractC1850bk, "parent");
        C1694h.m3117b(c1935l, "child");
        this.f4690a = c1935l;
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
        C1935l<?> c1935l = this.f4690a;
        c1935l.m2551a(c1935l.mo2547a((AbstractC1850bk) this.f4596b));
    }

    @Override // kotlinx.coroutines.internal.C1908i
    public String toString() {
        return "ChildContinuation[" + this.f4690a + ']';
    }
}
