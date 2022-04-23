package p530d.p531a.p532v0;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.v0.p1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/p1.class */
public final class ExecutorC9472p1 implements Executor, Runnable {

    /* renamed from: d */
    public static final Logger f36286d = Logger.getLogger(ExecutorC9472p1.class.getName());

    /* renamed from: e */
    public static final AbstractC9474b f36287e = m2666a();

    /* renamed from: a */
    public final Executor f36288a;

    /* renamed from: b */
    public final Queue<Runnable> f36289b = new ConcurrentLinkedQueue();

    /* renamed from: c */
    public volatile int f36290c = 0;

    /* renamed from: d.a.v0.p1$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p1$b.class */
    public static abstract class AbstractC9474b {
        public AbstractC9474b() {
        }

        /* renamed from: a */
        public abstract void mo2662a(ExecutorC9472p1 p1Var, int i);

        /* renamed from: a */
        public abstract boolean mo2661a(ExecutorC9472p1 p1Var, int i, int i2);
    }

    /* renamed from: d.a.v0.p1$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p1$c.class */
    public static final class C9475c extends AbstractC9474b {

        /* renamed from: a */
        public final AtomicIntegerFieldUpdater<ExecutorC9472p1> f36291a;

        public C9475c(AtomicIntegerFieldUpdater<ExecutorC9472p1> atomicIntegerFieldUpdater) {
            super();
            this.f36291a = atomicIntegerFieldUpdater;
        }

        @Override // p530d.p531a.p532v0.ExecutorC9472p1.AbstractC9474b
        /* renamed from: a */
        public void mo2662a(ExecutorC9472p1 p1Var, int i) {
            this.f36291a.set(p1Var, i);
        }

        @Override // p530d.p531a.p532v0.ExecutorC9472p1.AbstractC9474b
        /* renamed from: a */
        public boolean mo2661a(ExecutorC9472p1 p1Var, int i, int i2) {
            return this.f36291a.compareAndSet(p1Var, i, i2);
        }
    }

    /* renamed from: d.a.v0.p1$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/p1$d.class */
    public static final class C9476d extends AbstractC9474b {
        public C9476d() {
            super();
        }

        @Override // p530d.p531a.p532v0.ExecutorC9472p1.AbstractC9474b
        /* renamed from: a */
        public void mo2662a(ExecutorC9472p1 p1Var, int i) {
            synchronized (p1Var) {
                p1Var.f36290c = i;
            }
        }

        @Override // p530d.p531a.p532v0.ExecutorC9472p1.AbstractC9474b
        /* renamed from: a */
        public boolean mo2661a(ExecutorC9472p1 p1Var, int i, int i2) {
            synchronized (p1Var) {
                if (p1Var.f36290c != i) {
                    return false;
                }
                p1Var.f36290c = i2;
                return true;
            }
        }
    }

    public ExecutorC9472p1(Executor executor) {
        C4933n.m24794a(executor, "'executor' must not be null.");
        this.f36288a = executor;
    }

    /* renamed from: a */
    public static AbstractC9474b m2666a() {
        AbstractC9474b bVar;
        try {
            bVar = new C9475c(AtomicIntegerFieldUpdater.newUpdater(ExecutorC9472p1.class, "c"));
        } catch (Throwable th) {
            f36286d.log(Level.SEVERE, "FieldUpdaterAtomicHelper failed", th);
            bVar = new C9476d();
        }
        return bVar;
    }

    /* renamed from: b */
    public final void m2663b(Runnable runnable) {
        if (f36287e.mo2661a(this, 0, -1)) {
            try {
                this.f36288a.execute(this);
            } catch (Throwable th) {
                if (runnable != null) {
                    this.f36289b.remove(runnable);
                }
                f36287e.mo2662a(this, 0);
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Queue<Runnable> queue = this.f36289b;
        C4933n.m24794a(runnable, "'r' must not be null.");
        queue.add(runnable);
        m2663b(runnable);
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                Runnable poll = this.f36289b.poll();
                if (poll == null) {
                    break;
                }
                try {
                    poll.run();
                } catch (RuntimeException e) {
                    Logger logger = f36286d;
                    Level level = Level.SEVERE;
                    logger.log(level, "Exception while executing runnable " + poll, (Throwable) e);
                }
            } catch (Throwable th) {
                f36287e.mo2662a(this, 0);
                throw th;
            }
        }
        f36287e.mo2662a(this, 0);
        if (!this.f36289b.isEmpty()) {
            m2663b(null);
        }
    }
}
