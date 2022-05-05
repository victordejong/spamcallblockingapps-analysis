package p081h.p203i.p204a.p224e.p285m.p287b;

import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.o0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/o0.class */
public final class C9028o0 extends AbstractC9035p1 {

    /* renamed from: l */
    public static final AtomicLong f20531l = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: c */
    public C9046r0 f20532c;

    /* renamed from: d */
    public C9046r0 f20533d;

    /* renamed from: k */
    public volatile boolean f20540k;

    /* renamed from: i */
    public final Object f20538i = new Object();

    /* renamed from: j */
    public final Semaphore f20539j = new Semaphore(2);

    /* renamed from: e */
    public final PriorityBlockingQueue<C9040q0<?>> f20534e = new PriorityBlockingQueue<>();

    /* renamed from: f */
    public final BlockingQueue<C9040q0<?>> f20535f = new LinkedBlockingQueue();

    /* renamed from: g */
    public final Thread.UncaughtExceptionHandler f20536g = new C9034p0(this, "Thread death: Uncaught exception on worker thread");

    /* renamed from: h */
    public final Thread.UncaughtExceptionHandler f20537h = new C9034p0(this, "Thread death: Uncaught exception on network thread");

    public C9028o0(C9052s0 s0Var) {
        super(s0Var);
    }

    /* renamed from: a */
    public final <V> Future<V> m16363a(Callable<V> callable) throws IllegalStateException {
        m16342n();
        C7021t.m21290a(callable);
        C9040q0<?> q0Var = new C9040q0<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f20532c) {
            if (!this.f20534e.isEmpty()) {
                mo16178c().m16372v().m16338a("Callable skipped the worker queue.");
            }
            q0Var.run();
        } else {
            m16365a(q0Var);
        }
        return q0Var;
    }

    /* renamed from: a */
    public final void m16365a(C9040q0<?> q0Var) {
        synchronized (this.f20538i) {
            this.f20534e.add(q0Var);
            if (this.f20532c == null) {
                this.f20532c = new C9046r0(this, "Measurement Worker", this.f20534e);
                this.f20532c.setUncaughtExceptionHandler(this.f20536g);
                this.f20532c.start();
            } else {
                this.f20532c.m16330a();
            }
        }
    }

    /* renamed from: a */
    public final void m16364a(Runnable runnable) throws IllegalStateException {
        m16342n();
        C7021t.m21290a(runnable);
        m16365a(new C9040q0<>(this, runnable, false, "Task exception on worker thread"));
    }

    /* renamed from: b */
    public final <V> Future<V> m16359b(Callable<V> callable) throws IllegalStateException {
        m16342n();
        C7021t.m21290a(callable);
        C9040q0<?> q0Var = new C9040q0<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f20532c) {
            q0Var.run();
        } else {
            m16365a(q0Var);
        }
        return q0Var;
    }

    /* renamed from: b */
    public final void m16360b(Runnable runnable) throws IllegalStateException {
        m16342n();
        C7021t.m21290a(runnable);
        C9040q0<?> q0Var = new C9040q0<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f20538i) {
            this.f20535f.add(q0Var);
            if (this.f20533d == null) {
                this.f20533d = new C9046r0(this, "Measurement Network", this.f20535f);
                this.f20533d.setUncaughtExceptionHandler(this.f20537h);
                this.f20533d.start();
            } else {
                this.f20533d.m16330a();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.C9029o1
    /* renamed from: d */
    public final void mo16328d() {
        if (Thread.currentThread() != this.f20532c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.C9029o1
    /* renamed from: g */
    public final void mo16326g() {
        if (Thread.currentThread() != this.f20533d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9035p1
    /* renamed from: p */
    public final boolean mo16126p() {
        return false;
    }

    /* renamed from: s */
    public final boolean m16355s() {
        return Thread.currentThread() == this.f20532c;
    }
}
