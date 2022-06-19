package kotlinx.coroutines;

import kotlin.C1768j;
import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.ca */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ca.class */
public final class C1873ca<T> extends AbstractC1857bp<C1858bq> {

    /* renamed from: a */
    private final C1935l<T> f4616a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1873ca(C1858bq c1858bq, C1935l<? super T> c1935l) {
        super(c1858bq);
        C1694h.m3117b(c1858bq, "job");
        C1694h.m3117b(c1935l, "continuation");
        this.f4616a = c1935l;
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
        Object m2751p = ((C1858bq) this.f4596b).m2751p();
        if (!(m2751p instanceof AbstractC1845bf)) {
            if (m2751p instanceof C1945t) {
                this.f4616a.m2550a(((C1945t) m2751p).f4697a, 0);
                return;
            }
            C1935l<T> c1935l = this.f4616a;
            Object m2739a = C1863br.m2739a(m2751p);
            C1768j.C1769a c1769a = C1768j.f4443a;
            c1935l.mo2553a(C1768j.m2981e(m2739a));
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // kotlinx.coroutines.internal.C1908i
    public String toString() {
        return "ResumeAwaitOnCompletion[" + this.f4616a + ']';
    }
}
