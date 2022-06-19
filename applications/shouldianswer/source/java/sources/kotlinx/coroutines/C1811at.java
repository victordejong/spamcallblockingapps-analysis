package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.at */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/at.class */
final class C1811at implements AbstractC1812au {

    /* renamed from: a */
    private final Future<?> f4504a;

    public C1811at(Future<?> future) {
        C1694h.m3117b(future, "future");
        this.f4504a = future;
    }

    @Override // kotlinx.coroutines.AbstractC1812au
    /* renamed from: a */
    public void mo2730a() {
        this.f4504a.cancel(false);
    }

    public String toString() {
        return "DisposableFutureHandle[" + this.f4504a + ']';
    }
}
