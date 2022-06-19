package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.cc */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cc.class */
final class RunnableC1875cc implements Runnable {

    /* renamed from: a */
    private final AbstractC1950y f4617a;

    /* renamed from: b */
    private final AbstractC1934k<C1775o> f4618b;

    /* JADX WARN: Multi-variable type inference failed */
    public RunnableC1875cc(AbstractC1950y abstractC1950y, AbstractC1934k<? super C1775o> abstractC1934k) {
        C1694h.m3117b(abstractC1950y, "dispatcher");
        C1694h.m3117b(abstractC1934k, "continuation");
        this.f4617a = abstractC1950y;
        this.f4618b = abstractC1934k;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4618b.mo2546a(this.f4617a, C1775o.f4450a);
    }
}
