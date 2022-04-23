package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ep.class */
public final class ep extends fn {
    private static final AtomicLong j = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: a  reason: collision with root package name */
    private eo f29576a;

    /* renamed from: b  reason: collision with root package name */
    private eo f29577b;
    private volatile boolean i;
    private final Object g = new Object();
    private final Semaphore h = new Semaphore(2);

    /* renamed from: c  reason: collision with root package name */
    private final PriorityBlockingQueue<en<?>> f29578c = new PriorityBlockingQueue<>();

    /* renamed from: d  reason: collision with root package name */
    private final BlockingQueue<en<?>> f29579d = new LinkedBlockingQueue();
    private final Thread.UncaughtExceptionHandler e = new em(this, "Thread death: Uncaught exception on worker thread");
    private final Thread.UncaughtExceptionHandler f = new em(this, "Thread death: Uncaught exception on network thread");

    /* JADX INFO: Access modifiers changed from: package-private */
    public ep(es esVar) {
        super(esVar);
    }

    private final void a(en<?> enVar) {
        synchronized (this.g) {
            this.f29578c.add(enVar);
            eo eoVar = this.f29576a;
            if (eoVar == null) {
                eo eoVar2 = new eo(this, "Measurement Worker", this.f29578c);
                this.f29576a = eoVar2;
                eoVar2.setUncaughtExceptionHandler(this.e);
                this.f29576a.start();
            } else {
                eoVar.a();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.fm
    public final void S_() {
        if (Thread.currentThread() != this.f29576a) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.fm
    public final void T_() {
        if (Thread.currentThread() != this.f29577b) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> T a(AtomicReference<T> atomicReference, long j2, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.t.d().a(runnable);
            try {
                atomicReference.wait(j2);
            } catch (InterruptedException e) {
                this.t.c().f.a(str.length() != 0 ? "Interrupted waiting for ".concat(str) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            this.t.c().f.a(str.length() != 0 ? "Timed out waiting for ".concat(str) : new String("Timed out waiting for "));
        }
        return t;
    }

    public final <V> Future<V> a(Callable<V> callable) throws IllegalStateException {
        g();
        o.a(callable);
        en<?> enVar = new en<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f29576a) {
            if (!this.f29578c.isEmpty()) {
                this.t.c().f.a("Callable skipped the worker queue.");
            }
            enVar.run();
        } else {
            a(enVar);
        }
        return enVar;
    }

    public final void a(Runnable runnable) throws IllegalStateException {
        g();
        o.a(runnable);
        a(new en<>(this, runnable, false, "Task exception on worker thread"));
    }

    @Override // com.google.android.gms.measurement.internal.fn
    protected final boolean a() {
        return false;
    }

    public final boolean aj_() {
        return Thread.currentThread() == this.f29576a;
    }

    public final <V> Future<V> b(Callable<V> callable) throws IllegalStateException {
        g();
        o.a(callable);
        en<?> enVar = new en<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f29576a) {
            enVar.run();
        } else {
            a(enVar);
        }
        return enVar;
    }

    public final void b(Runnable runnable) throws IllegalStateException {
        g();
        o.a(runnable);
        a(new en<>(this, runnable, true, "Task exception on worker thread"));
    }

    public final void c(Runnable runnable) throws IllegalStateException {
        g();
        o.a(runnable);
        en<?> enVar = new en<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.g) {
            this.f29579d.add(enVar);
            eo eoVar = this.f29577b;
            if (eoVar == null) {
                eo eoVar2 = new eo(this, "Measurement Network", this.f29579d);
                this.f29577b = eoVar2;
                eoVar2.setUncaughtExceptionHandler(this.f);
                this.f29577b.start();
            } else {
                eoVar.a();
            }
        }
    }
}
