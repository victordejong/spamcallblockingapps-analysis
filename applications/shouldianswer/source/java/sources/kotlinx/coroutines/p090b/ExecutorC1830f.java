package kotlinx.coroutines.p090b;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1841bb;
/* renamed from: kotlinx.coroutines.b.f */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/f.class */
public final class ExecutorC1830f extends AbstractC1841bb implements Executor, AbstractC1834j {

    /* renamed from: c */
    private static final AtomicIntegerFieldUpdater f4559c = AtomicIntegerFieldUpdater.newUpdater(ExecutorC1830f.class, "inFlightTasks");

    /* renamed from: d */
    private final C1828d f4561d;

    /* renamed from: e */
    private final int f4562e;

    /* renamed from: f */
    private final EnumC1836l f4563f;

    /* renamed from: b */
    private final ConcurrentLinkedQueue<Runnable> f4560b = new ConcurrentLinkedQueue<>();
    private volatile int inFlightTasks = 0;

    public ExecutorC1830f(C1828d c1828d, int i, EnumC1836l enumC1836l) {
        C1694h.m3117b(c1828d, "dispatcher");
        C1694h.m3117b(enumC1836l, "taskMode");
        this.f4561d = c1828d;
        this.f4562e = i;
        this.f4563f = enumC1836l;
    }

    /* renamed from: a */
    private final void m2832a(Runnable runnable, boolean z) {
        while (f4559c.incrementAndGet(this) > this.f4562e) {
            this.f4560b.add(runnable);
            if (f4559c.decrementAndGet(this) >= this.f4562e) {
                return;
            }
            runnable = this.f4560b.poll();
            if (runnable == null) {
                return;
            }
        }
        this.f4561d.m2835a(runnable, this, z);
    }

    @Override // kotlinx.coroutines.AbstractC1841bb
    /* renamed from: a */
    public Executor mo2525a() {
        return this;
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(runnable, "block");
        m2832a(runnable, false);
    }

    @Override // kotlinx.coroutines.p090b.AbstractC1834j
    /* renamed from: b */
    public void mo2830b() {
        Runnable poll = this.f4560b.poll();
        if (poll != null) {
            this.f4561d.m2835a(poll, this, true);
            return;
        }
        f4559c.decrementAndGet(this);
        Runnable poll2 = this.f4560b.poll();
        if (poll2 == null) {
            return;
        }
        m2832a(poll2, true);
    }

    @Override // kotlinx.coroutines.p090b.AbstractC1834j
    /* renamed from: c */
    public EnumC1836l mo2829c() {
        return this.f4563f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        C1694h.m3117b(runnable, "command");
        m2832a(runnable, false);
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    public String toString() {
        return super.toString() + "[dispatcher = " + this.f4561d + ']';
    }
}
