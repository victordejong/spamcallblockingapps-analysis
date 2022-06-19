package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.bi */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bi.class */
public final class C1848bi extends AbstractC1853bl<AbstractC1850bk> {

    /* renamed from: a */
    private static final AtomicIntegerFieldUpdater f4591a = AtomicIntegerFieldUpdater.newUpdater(C1848bi.class, "_invoked");
    private volatile int _invoked = 0;

    /* renamed from: e */
    private final AbstractC1663b<Throwable, C1775o> f4592e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1848bi(AbstractC1850bk abstractC1850bk, AbstractC1663b<? super Throwable, C1775o> abstractC1663b) {
        super(abstractC1850bk);
        C1694h.m3117b(abstractC1850bk, "job");
        C1694h.m3117b(abstractC1663b, "handler");
        this.f4592e = abstractC1663b;
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
        if (f4591a.compareAndSet(this, 0, 1)) {
            this.f4592e.mo138a(th);
        }
    }

    @Override // kotlinx.coroutines.internal.C1908i
    public String toString() {
        return "InvokeOnCancelling[" + C1789ag.m2954b(this) + '@' + C1789ag.m2956a(this) + ']';
    }
}
