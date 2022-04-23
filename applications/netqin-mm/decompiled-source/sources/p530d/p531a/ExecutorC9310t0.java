package p530d.p531a;

import java.lang.Thread;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.t0 */
/* loaded from: classes2-dex2jar.jar:d/a/t0.class */
public final class ExecutorC9310t0 implements Executor {

    /* renamed from: a */
    public final Thread.UncaughtExceptionHandler f35880a;

    /* renamed from: b */
    public final Queue<Runnable> f35881b = new ConcurrentLinkedQueue();

    /* renamed from: c */
    public final AtomicReference<Thread> f35882c = new AtomicReference<>();

    /* renamed from: d.a.t0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/t0$a.class */
    public class RunnableC9311a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ RunnableC9312b f35883a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f35884b;

        public RunnableC9311a(RunnableC9312b bVar, Runnable runnable) {
            this.f35883a = bVar;
            this.f35884b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            ExecutorC9310t0.this.execute(this.f35883a);
        }

        public String toString() {
            return this.f35884b.toString() + "(scheduled in SynchronizationContext)";
        }
    }

    /* renamed from: d.a.t0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/t0$b.class */
    public static class RunnableC9312b implements Runnable {

        /* renamed from: a */
        public final Runnable f35886a;

        /* renamed from: b */
        public boolean f35887b;

        /* renamed from: c */
        public boolean f35888c;

        public RunnableC9312b(Runnable runnable) {
            C4933n.m24794a(runnable, "task");
            this.f35886a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f35887b) {
                this.f35888c = true;
                this.f35886a.run();
            }
        }
    }

    /* renamed from: d.a.t0$c */
    /* loaded from: classes2-dex2jar.jar:d/a/t0$c.class */
    public static final class C9313c {

        /* renamed from: a */
        public final RunnableC9312b f35889a;

        /* renamed from: b */
        public final ScheduledFuture<?> f35890b;

        public C9313c(RunnableC9312b bVar, ScheduledFuture<?> scheduledFuture) {
            C4933n.m24794a(bVar, "runnable");
            this.f35889a = bVar;
            C4933n.m24794a(scheduledFuture, "future");
            this.f35890b = scheduledFuture;
        }

        public /* synthetic */ C9313c(RunnableC9312b bVar, ScheduledFuture scheduledFuture, RunnableC9311a aVar) {
            this(bVar, scheduledFuture);
        }

        /* renamed from: a */
        public void m2947a() {
            this.f35889a.f35887b = true;
            this.f35890b.cancel(false);
        }

        /* renamed from: b */
        public boolean m2946b() {
            RunnableC9312b bVar = this.f35889a;
            return !bVar.f35888c && !bVar.f35887b;
        }
    }

    public ExecutorC9310t0(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        C4933n.m24794a(uncaughtExceptionHandler, "uncaughtExceptionHandler");
        this.f35880a = uncaughtExceptionHandler;
    }

    /* renamed from: a */
    public final C9313c m2950a(Runnable runnable, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        RunnableC9312b bVar = new RunnableC9312b(runnable);
        return new C9313c(bVar, scheduledExecutorService.schedule(new RunnableC9311a(bVar, runnable), j, timeUnit), null);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final void m2951a() {
        while (this.f35882c.compareAndSet(null, Thread.currentThread())) {
            while (true) {
                try {
                    Runnable poll = this.f35881b.poll();
                    if (poll != null) {
                        poll.run();
                    } else {
                        this.f35882c.set(null);
                        if (this.f35881b.isEmpty()) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    this.f35882c.set(null);
                    throw th;
                }
            }
        }
    }

    /* renamed from: b */
    public void m2949b() {
        C4933n.m24775b(Thread.currentThread() == this.f35882c.get(), "Not called from the SynchronizationContext");
    }

    /* renamed from: b */
    public final void m2948b(Runnable runnable) {
        Queue<Runnable> queue = this.f35881b;
        C4933n.m24794a(runnable, "runnable is null");
        queue.add(runnable);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        m2948b(runnable);
        m2951a();
    }
}
