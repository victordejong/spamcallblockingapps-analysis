package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p1727n3.p1758e.p1767b.C26103y0;
/* renamed from: n3.e.b.j1.t1.c.h */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/h.class */
public abstract class AbstractC26039h<V> implements ListenableFuture<V> {
    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        Objects.requireNonNull(runnable);
        Objects.requireNonNull(executor);
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            C26103y0.m2723b("ImmediateFuture", "Experienced RuntimeException while attempting to notify " + runnable + " on Executor " + executor, e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public abstract V get() throws ExecutionException;

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException {
        Objects.requireNonNull(timeUnit);
        return get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }
}
