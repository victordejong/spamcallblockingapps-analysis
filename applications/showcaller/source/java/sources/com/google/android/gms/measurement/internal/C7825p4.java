package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.p4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/p4.class */
public final class C7825p4 extends AbstractC7804n5 {

    /* renamed from: c */
    private static final AtomicLong f35573c = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: d */
    private C7814o4 f35574d;

    /* renamed from: e */
    private C7814o4 f35575e;

    /* renamed from: l */
    private volatile boolean f35582l;

    /* renamed from: j */
    private final Object f35580j = new Object();

    /* renamed from: k */
    private final Semaphore f35581k = new Semaphore(2);

    /* renamed from: f */
    private final PriorityBlockingQueue<C7803n4<?>> f35576f = new PriorityBlockingQueue<>();

    /* renamed from: g */
    private final BlockingQueue<C7803n4<?>> f35577g = new LinkedBlockingQueue();

    /* renamed from: h */
    private final Thread.UncaughtExceptionHandler f35578h = new C7792m4(this, "Thread death: Uncaught exception on worker thread");

    /* renamed from: i */
    private final Thread.UncaughtExceptionHandler f35579i = new C7792m4(this, "Thread death: Uncaught exception on network thread");

    public C7825p4(C7858s4 c7858s4) {
        super(c7858s4);
    }

    /* renamed from: D */
    private final void m6115D(C7803n4<?> c7803n4) {
        synchronized (this.f35580j) {
            this.f35576f.add(c7803n4);
            C7814o4 c7814o4 = this.f35574d;
            if (c7814o4 == null) {
                C7814o4 c7814o42 = new C7814o4(this, "Measurement Worker", this.f35576f);
                this.f35574d = c7814o42;
                c7814o42.setUncaughtExceptionHandler(this.f35578h);
                this.f35574d.start();
            } else {
                c7814o4.m6182a();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.C7793m5
    /* renamed from: e */
    public final void mo6114e() {
        if (Thread.currentThread() == this.f35575e) {
            return;
        }
        throw new IllegalStateException("Call expected from network thread");
    }

    @Override // com.google.android.gms.measurement.internal.C7793m5
    /* renamed from: f */
    public final void mo6113f() {
        if (Thread.currentThread() == this.f35574d) {
            return;
        }
        throw new IllegalStateException("Call expected from worker thread");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7804n5
    /* renamed from: g */
    protected final boolean mo5878g() {
        return false;
    }

    /* renamed from: m */
    public final boolean m6112m() {
        return Thread.currentThread() == this.f35574d;
    }

    /* renamed from: n */
    public final <V> Future<V> m6111n(Callable<V> callable) {
        m6209j();
        C6155o.m17018j(callable);
        C7803n4<?> c7803n4 = new C7803n4<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f35574d) {
            if (!this.f35576f.isEmpty()) {
                this.f35460a.mo6047C().m6192p().m6216a("Callable skipped the worker queue.");
            }
            c7803n4.run();
        } else {
            m6115D(c7803n4);
        }
        return c7803n4;
    }

    /* renamed from: o */
    public final <V> Future<V> m6110o(Callable<V> callable) {
        m6209j();
        C6155o.m17018j(callable);
        C7803n4<?> c7803n4 = new C7803n4<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f35574d) {
            c7803n4.run();
        } else {
            m6115D(c7803n4);
        }
        return c7803n4;
    }

    /* renamed from: p */
    public final void m6109p(Runnable runnable) {
        m6209j();
        C6155o.m17018j(runnable);
        m6115D(new C7803n4<>(this, runnable, false, "Task exception on worker thread"));
    }

    /* renamed from: q */
    public final <T> T m6108q(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.f35460a.mo6029b().m6109p(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                this.f35460a.mo6047C().m6192p().m6216a(str.length() != 0 ? "Interrupted waiting for ".concat(str) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            this.f35460a.mo6047C().m6192p().m6216a(str.length() != 0 ? "Timed out waiting for ".concat(str) : new String("Timed out waiting for "));
        }
        return t;
    }

    /* renamed from: r */
    public final void m6107r(Runnable runnable) {
        m6209j();
        C6155o.m17018j(runnable);
        m6115D(new C7803n4<>(this, runnable, true, "Task exception on worker thread"));
    }

    /* renamed from: s */
    public final void m6106s(Runnable runnable) {
        m6209j();
        C6155o.m17018j(runnable);
        C7803n4<?> c7803n4 = new C7803n4<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f35580j) {
            this.f35577g.add(c7803n4);
            C7814o4 c7814o4 = this.f35575e;
            if (c7814o4 == null) {
                C7814o4 c7814o42 = new C7814o4(this, "Measurement Network", this.f35577g);
                this.f35575e = c7814o42;
                c7814o42.setUncaughtExceptionHandler(this.f35579i);
                this.f35575e.start();
            } else {
                c7814o4.m6182a();
            }
        }
    }
}
