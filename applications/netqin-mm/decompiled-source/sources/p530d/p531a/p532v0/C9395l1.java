package p530d.p531a.p532v0;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p266c.p267a.C4938q;
/* renamed from: d.a.v0.l1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/l1.class */
public final class C9395l1 {

    /* renamed from: a */
    public final ScheduledExecutorService f36072a;

    /* renamed from: b */
    public final Executor f36073b;

    /* renamed from: c */
    public final Runnable f36074c;

    /* renamed from: d */
    public final C4938q f36075d;

    /* renamed from: e */
    public long f36076e;

    /* renamed from: f */
    public boolean f36077f;

    /* renamed from: g */
    public ScheduledFuture<?> f36078g;

    /* renamed from: d.a.v0.l1$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/l1$b.class */
    public final class RunnableC9397b implements Runnable {
        public RunnableC9397b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C9395l1.this.f36077f) {
                C9395l1.this.f36078g = null;
                return;
            }
            long a = C9395l1.this.m2850a();
            if (C9395l1.this.f36076e - a > 0) {
                C9395l1 l1Var = C9395l1.this;
                l1Var.f36078g = l1Var.f36072a.schedule(new RunnableC9398c(), C9395l1.this.f36076e - a, TimeUnit.NANOSECONDS);
                return;
            }
            C9395l1.this.f36077f = false;
            C9395l1.this.f36078g = null;
            C9395l1.this.f36074c.run();
        }
    }

    /* renamed from: d.a.v0.l1$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/l1$c.class */
    public final class RunnableC9398c implements Runnable {
        public RunnableC9398c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9395l1.this.f36073b.execute(new RunnableC9397b());
        }
    }

    public C9395l1(Runnable runnable, Executor executor, ScheduledExecutorService scheduledExecutorService, C4938q qVar) {
        this.f36074c = runnable;
        this.f36073b = executor;
        this.f36072a = scheduledExecutorService;
        this.f36075d = qVar;
        qVar.m24760c();
    }

    /* renamed from: a */
    public final long m2850a() {
        return this.f36075d.m24763a(TimeUnit.NANOSECONDS);
    }

    /* renamed from: a */
    public void m2849a(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        long a = m2850a() + nanos;
        this.f36077f = true;
        if (a - this.f36076e < 0 || this.f36078g == null) {
            ScheduledFuture<?> scheduledFuture = this.f36078g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            this.f36078g = this.f36072a.schedule(new RunnableC9398c(), nanos, TimeUnit.NANOSECONDS);
        }
        this.f36076e = a;
    }

    /* renamed from: a */
    public void m2845a(boolean z) {
        ScheduledFuture<?> scheduledFuture;
        this.f36077f = false;
        if (z && (scheduledFuture = this.f36078g) != null) {
            scheduledFuture.cancel(false);
            this.f36078g = null;
        }
    }
}
