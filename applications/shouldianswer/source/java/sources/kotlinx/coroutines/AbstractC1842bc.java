package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1899e;
/* renamed from: kotlinx.coroutines.bc */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bc.class */
public abstract class AbstractC1842bc extends AbstractC1841bb implements AbstractC1796am {

    /* renamed from: b */
    private boolean f4586b;

    /* renamed from: a */
    private final ScheduledFuture<?> m2811a(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledFuture<?> scheduledFuture;
        try {
            Executor a = mo2525a();
            Executor executor = a;
            if (!(a instanceof ScheduledExecutorService)) {
                executor = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executor;
            scheduledFuture = null;
            if (scheduledExecutorService != null) {
                scheduledFuture = scheduledExecutorService.schedule(runnable, j, timeUnit);
            }
        } catch (RejectedExecutionException e) {
            scheduledFuture = null;
        }
        return scheduledFuture;
    }

    @Override // kotlinx.coroutines.AbstractC1796am
    /* renamed from: a */
    public AbstractC1812au mo2612a(long j, Runnable runnable) {
        C1694h.m3117b(runnable, "block");
        ScheduledFuture<?> m2811a = this.f4586b ? m2811a(runnable, j, TimeUnit.MILLISECONDS) : null;
        return m2811a != null ? new C1811at(m2811a) : RunnableC1790ah.f4472b.mo2612a(j, runnable);
    }

    @Override // kotlinx.coroutines.AbstractC1796am
    /* renamed from: a */
    public void mo2611a(long j, AbstractC1934k<? super C1775o> abstractC1934k) {
        C1694h.m3117b(abstractC1934k, "continuation");
        ScheduledFuture<?> m2811a = this.f4586b ? m2811a(new RunnableC1875cc(this, abstractC1934k), j, TimeUnit.MILLISECONDS) : null;
        if (m2811a != null) {
            C1854bm.m2802a(abstractC1934k, m2811a);
        } else {
            RunnableC1790ah.f4472b.mo2611a(j, abstractC1934k);
        }
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(runnable, "block");
        try {
            mo2525a().execute(C1884cj.m2695a().mo2701a(runnable));
        } catch (RejectedExecutionException e) {
            C1884cj.m2695a().mo2698c();
            RunnableC1790ah.f4472b.m2914a(runnable);
        }
    }

    /* renamed from: b */
    public final void m2810b() {
        this.f4586b = C1899e.m2664a(mo2525a());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor a = mo2525a();
        Executor executor = a;
        if (!(a instanceof ExecutorService)) {
            executor = null;
        }
        ExecutorService executorService = (ExecutorService) executor;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof AbstractC1842bc) && ((AbstractC1842bc) obj).mo2525a() == mo2525a();
    }

    public int hashCode() {
        return System.identityHashCode(mo2525a());
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    public String toString() {
        return mo2525a().toString();
    }
}
