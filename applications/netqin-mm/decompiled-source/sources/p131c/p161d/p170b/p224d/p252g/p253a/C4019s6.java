package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdxr;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.b.d.g.a.s6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s6.class */
public final class C4019s6 extends zzdxr {

    /* renamed from: a */
    public final Executor f15073a;

    public C4019s6(Executor executor) {
        this.f15073a = executor;
    }

    public /* synthetic */ C4019s6(Executor executor, C3905p6 p6Var) {
        this(executor);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f15073a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
