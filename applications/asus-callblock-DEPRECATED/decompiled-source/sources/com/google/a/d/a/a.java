package com.google.a.d.a;

import com.google.a.a.d;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;
/* loaded from: classes-dex2jar.jar:com/google/a/d/a/a.class */
public abstract class a<V> implements f<V> {

    /* renamed from: a  reason: collision with root package name */
    private final C0103a<V> f3738a = new C0103a<>();

    /* renamed from: b  reason: collision with root package name */
    private final c f3739b = new c();

    /* renamed from: com.google.a.d.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/a/d/a/a$a.class */
    static final class C0103a<V> extends AbstractQueuedSynchronizer {

        /* renamed from: a  reason: collision with root package name */
        private V f3740a;

        /* renamed from: b  reason: collision with root package name */
        private Throwable f3741b;

        C0103a() {
        }

        final V a() {
            int state = getState();
            switch (state) {
                case 2:
                    if (this.f3741b == null) {
                        return this.f3740a;
                    }
                    throw new ExecutionException(this.f3741b);
                case 3:
                default:
                    throw new IllegalStateException("Error, synchronizer in invalid state: " + state);
                case 4:
                    throw new CancellationException("Task was cancelled.");
            }
        }

        final boolean a(V v, Throwable th, int i) {
            boolean compareAndSetState = compareAndSetState(0, 1);
            if (compareAndSetState) {
                this.f3740a = v;
                this.f3741b = th;
                releaseShared(i);
            } else if (getState() == 1) {
                acquireShared(-1);
            }
            return compareAndSetState;
        }

        final boolean b() {
            return (getState() & 6) != 0;
        }

        final boolean c() {
            return getState() == 4;
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        protected final int tryAcquireShared(int i) {
            return b() ? 1 : -1;
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        protected final boolean tryReleaseShared(int i) {
            setState(i);
            return true;
        }
    }

    @Override // com.google.a.d.a.f
    public final void a(Runnable runnable, Executor executor) {
        this.f3739b.a(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(V v) {
        boolean a2 = this.f3738a.a(v, null, 2);
        if (a2) {
            this.f3739b.a();
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Throwable th) {
        boolean a2 = this.f3738a.a(null, (Throwable) d.a(th), 2);
        if (a2) {
            this.f3739b.a();
        }
        if (!(th instanceof Error)) {
            return a2;
        }
        throw ((Error) th);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2;
        if (!this.f3738a.a(null, null, 4)) {
            z2 = false;
        } else {
            this.f3739b.a();
            z2 = true;
        }
        return z2;
    }

    @Override // java.util.concurrent.Future
    public V get() {
        C0103a<V> aVar = this.f3738a;
        aVar.acquireSharedInterruptibly(-1);
        return aVar.a();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) {
        C0103a<V> aVar = this.f3738a;
        if (aVar.tryAcquireSharedNanos(-1, timeUnit.toNanos(j))) {
            return aVar.a();
        }
        throw new TimeoutException("Timeout waiting for task.");
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f3738a.c();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f3738a.b();
    }
}
