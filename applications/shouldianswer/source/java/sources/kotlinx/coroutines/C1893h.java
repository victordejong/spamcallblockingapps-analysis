package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.h */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/h.class */
final class C1893h extends AbstractC1894i {

    /* renamed from: a */
    private final Future<?> f4631a;

    public C1893h(Future<?> future) {
        C1694h.m3117b(future, "future");
        this.f4631a = future;
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
        this.f4631a.cancel(false);
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.f4631a + ']';
    }
}
