package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfo.class */
public final class zzfo extends zzgr {

    /* renamed from: l */
    private static final AtomicLong f9239l = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: c */
    private zzfs f9240c;

    /* renamed from: d */
    private zzfs f9241d;

    /* renamed from: k */
    private volatile boolean f9248k;

    /* renamed from: i */
    private final Object f9246i = new Object();

    /* renamed from: j */
    private final Semaphore f9247j = new Semaphore(2);

    /* renamed from: e */
    private final PriorityBlockingQueue<zzft<?>> f9242e = new PriorityBlockingQueue<>();

    /* renamed from: f */
    private final BlockingQueue<zzft<?>> f9243f = new LinkedBlockingQueue();

    /* renamed from: g */
    private final Thread.UncaughtExceptionHandler f9244g = new zzfq(this, "Thread death: Uncaught exception on worker thread");

    /* renamed from: h */
    private final Thread.UncaughtExceptionHandler f9245h = new zzfq(this, "Thread death: Uncaught exception on network thread");

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfo(zzfv zzfvVar) {
        super(zzfvVar);
    }

    /* renamed from: w */
    private final void m11410w(zzft<?> zzftVar) {
        synchronized (this.f9246i) {
            this.f9242e.add(zzftVar);
            if (this.f9240c == null) {
                zzfs zzfsVar = new zzfs(this, "Measurement Worker", this.f9242e);
                this.f9240c = zzfsVar;
                zzfsVar.setUncaughtExceptionHandler(this.f9244g);
                this.f9240c.start();
            } else {
                this.f9240c.m11390a();
            }
        }
    }

    /* renamed from: A */
    public final void m11422A(Runnable runnable) throws IllegalStateException {
        m11310n();
        Preconditions.m14523k(runnable);
        m11410w(new zzft<>(this, runnable, true, "Task exception on worker thread"));
    }

    /* renamed from: D */
    public final void m11419D(Runnable runnable) throws IllegalStateException {
        m11310n();
        Preconditions.m14523k(runnable);
        zzft<?> zzftVar = new zzft<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f9246i) {
            this.f9243f.add(zzftVar);
            if (this.f9241d == null) {
                zzfs zzfsVar = new zzfs(this, "Measurement Network", this.f9243f);
                this.f9241d = zzfsVar;
                zzfsVar.setUncaughtExceptionHandler(this.f9245h);
                this.f9241d.start();
            } else {
                this.f9241d.m11390a();
            }
        }
    }

    /* renamed from: G */
    public final boolean m11416G() {
        return Thread.currentThread() == this.f9240c;
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    /* renamed from: d */
    public final void mo11317d() {
        if (Thread.currentThread() != this.f9241d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    /* renamed from: e */
    public final void mo11316e() {
        if (Thread.currentThread() != this.f9240c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    /* renamed from: q */
    protected final boolean mo10948q() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public final <T> T m11413t(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            mo11083b().m11409x(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                zzet G = mo11081c().m11557G();
                String valueOf = String.valueOf(str);
                G.m11540a(valueOf.length() != 0 ? "Interrupted waiting for ".concat(valueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            zzet G2 = mo11081c().m11557G();
            String valueOf2 = String.valueOf(str);
            G2.m11540a(valueOf2.length() != 0 ? "Timed out waiting for ".concat(valueOf2) : new String("Timed out waiting for "));
        }
        return t;
    }

    /* renamed from: u */
    public final <V> Future<V> m11412u(Callable<V> callable) throws IllegalStateException {
        m11310n();
        Preconditions.m14523k(callable);
        zzft<?> zzftVar = new zzft<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f9240c) {
            if (!this.f9242e.isEmpty()) {
                mo11081c().m11557G().m11540a("Callable skipped the worker queue.");
            }
            zzftVar.run();
        } else {
            m11410w(zzftVar);
        }
        return zzftVar;
    }

    /* renamed from: x */
    public final void m11409x(Runnable runnable) throws IllegalStateException {
        m11310n();
        Preconditions.m14523k(runnable);
        m11410w(new zzft<>(this, runnable, false, "Task exception on worker thread"));
    }

    /* renamed from: z */
    public final <V> Future<V> m11407z(Callable<V> callable) throws IllegalStateException {
        m11310n();
        Preconditions.m14523k(callable);
        zzft<?> zzftVar = new zzft<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f9240c) {
            zzftVar.run();
        } else {
            m11410w(zzftVar);
        }
        return zzftVar;
    }
}
