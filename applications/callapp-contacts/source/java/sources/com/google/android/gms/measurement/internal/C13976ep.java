package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ep */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ep.class */
public final class C13976ep extends AbstractC14001fn {

    /* renamed from: j */
    private static final AtomicLong f51500j = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: a */
    private C13975eo f51501a;

    /* renamed from: b */
    private C13975eo f51502b;

    /* renamed from: i */
    private volatile boolean f51509i;

    /* renamed from: g */
    private final Object f51507g = new Object();

    /* renamed from: h */
    private final Semaphore f51508h = new Semaphore(2);

    /* renamed from: c */
    private final PriorityBlockingQueue<C13974en<?>> f51503c = new PriorityBlockingQueue<>();

    /* renamed from: d */
    private final BlockingQueue<C13974en<?>> f51504d = new LinkedBlockingQueue();

    /* renamed from: e */
    private final Thread.UncaughtExceptionHandler f51505e = new C13973em(this, "Thread death: Uncaught exception on worker thread");

    /* renamed from: f */
    private final Thread.UncaughtExceptionHandler f51506f = new C13973em(this, "Thread death: Uncaught exception on network thread");

    public C13976ep(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: a */
    private final void m12013a(C13974en<?> c13974en) {
        synchronized (this.f51507g) {
            this.f51503c.add(c13974en);
            C13975eo c13975eo = this.f51501a;
            if (c13975eo == null) {
                C13975eo c13975eo2 = new C13975eo(this, "Measurement Worker", this.f51503c);
                this.f51501a = c13975eo2;
                c13975eo2.setUncaughtExceptionHandler(this.f51505e);
                this.f51501a.start();
            } else {
                c13975eo.m12016a();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.C14000fm
    /* renamed from: S_ */
    public final void mo11884S_() {
        if (Thread.currentThread() == this.f51501a) {
            return;
        }
        throw new IllegalStateException("Call expected from worker thread");
    }

    @Override // com.google.android.gms.measurement.internal.C14000fm
    /* renamed from: T_ */
    public final void mo11883T_() {
        if (Thread.currentThread() == this.f51502b) {
            return;
        }
        throw new IllegalStateException("Call expected from network thread");
    }

    /* renamed from: a */
    public final <T> T m12009a(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.f51637t.mo11658d().m12011a(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                this.f51637t.mo11661c().f51398f.m12092a(str.length() != 0 ? "Interrupted waiting for ".concat(str) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            this.f51637t.mo11661c().f51398f.m12092a(str.length() != 0 ? "Timed out waiting for ".concat(str) : new String("Timed out waiting for "));
        }
        return t;
    }

    /* renamed from: a */
    public final <V> Future<V> m12010a(Callable<V> callable) throws IllegalStateException {
        m11881g();
        C12045o.m19162a(callable);
        C13974en<?> c13974en = new C13974en<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f51501a) {
            if (!this.f51503c.isEmpty()) {
                this.f51637t.mo11661c().f51398f.m12092a("Callable skipped the worker queue.");
            }
            c13974en.run();
        } else {
            m12013a(c13974en);
        }
        return c13974en;
    }

    /* renamed from: a */
    public final void m12011a(Runnable runnable) throws IllegalStateException {
        m11881g();
        C12045o.m19162a(runnable);
        m12013a(new C13974en<>(this, runnable, false, "Task exception on worker thread"));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14001fn
    /* renamed from: a */
    protected final boolean mo11519a() {
        return false;
    }

    public final boolean aj_() {
        return Thread.currentThread() == this.f51501a;
    }

    /* renamed from: b */
    public final <V> Future<V> m12006b(Callable<V> callable) throws IllegalStateException {
        m11881g();
        C12045o.m19162a(callable);
        C13974en<?> c13974en = new C13974en<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f51501a) {
            c13974en.run();
        } else {
            m12013a(c13974en);
        }
        return c13974en;
    }

    /* renamed from: b */
    public final void m12007b(Runnable runnable) throws IllegalStateException {
        m11881g();
        C12045o.m19162a(runnable);
        m12013a(new C13974en<>(this, runnable, true, "Task exception on worker thread"));
    }

    /* renamed from: c */
    public final void m12004c(Runnable runnable) throws IllegalStateException {
        m11881g();
        C12045o.m19162a(runnable);
        C13974en<?> c13974en = new C13974en<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f51507g) {
            this.f51504d.add(c13974en);
            C13975eo c13975eo = this.f51502b;
            if (c13975eo == null) {
                C13975eo c13975eo2 = new C13975eo(this, "Measurement Network", this.f51504d);
                this.f51502b = c13975eo2;
                c13975eo2.setUncaughtExceptionHandler(this.f51506f);
                this.f51502b.start();
            } else {
                c13975eo.m12016a();
            }
        }
    }
}
