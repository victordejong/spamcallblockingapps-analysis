package p081h.p203i.p325c.p337n.p338d.p341h;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import p081h.p203i.p325c.p337n.p338d.C9513b;
/* renamed from: h.i.c.n.d.h.w */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/w.class */
public final class C9616w {

    /* renamed from: h.i.c.n.d.h.w$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/w$a.class */
    public class ThreadFactoryC9617a implements ThreadFactory {

        /* renamed from: a */
        public final /* synthetic */ String f21910a;

        /* renamed from: b */
        public final /* synthetic */ AtomicLong f21911b;

        /* renamed from: h.i.c.n.d.h.w$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/w$a$a.class */
        public class C9618a extends AbstractRunnableC9538d {

            /* renamed from: a */
            public final /* synthetic */ Runnable f21912a;

            public C9618a(ThreadFactoryC9617a aVar, Runnable runnable) {
                this.f21912a = runnable;
            }

            @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractRunnableC9538d
            /* renamed from: a */
            public void mo14192a() {
                this.f21912a.run();
            }
        }

        public ThreadFactoryC9617a(String str, AtomicLong atomicLong) {
            this.f21910a = str;
            this.f21911b = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(new C9618a(this, runnable));
            newThread.setName(this.f21910a + this.f21911b.getAndIncrement());
            return newThread;
        }
    }

    /* renamed from: h.i.c.n.d.h.w$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/w$b.class */
    public class C9619b extends AbstractRunnableC9538d {

        /* renamed from: a */
        public final /* synthetic */ String f21913a;

        /* renamed from: b */
        public final /* synthetic */ ExecutorService f21914b;

        /* renamed from: c */
        public final /* synthetic */ long f21915c;

        /* renamed from: d */
        public final /* synthetic */ TimeUnit f21916d;

        public C9619b(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
            this.f21913a = str;
            this.f21914b = executorService;
            this.f21915c = j;
            this.f21916d = timeUnit;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractRunnableC9538d
        /* renamed from: a */
        public void mo14192a() {
            try {
                C9513b a = C9513b.m15015a();
                a.m15013a("Executing shutdown hook for " + this.f21913a);
                this.f21914b.shutdown();
                if (!this.f21914b.awaitTermination(this.f21915c, this.f21916d)) {
                    C9513b a2 = C9513b.m15015a();
                    a2.m15013a(this.f21913a + " did not shut down in the allocated time. Requesting immediate shutdown.");
                    this.f21914b.shutdownNow();
                }
            } catch (InterruptedException e) {
                C9513b.m15015a().m15013a(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f21913a));
                this.f21914b.shutdownNow();
            }
        }
    }

    /* renamed from: a */
    public static ExecutorService m14698a(String str) {
        ExecutorService a = m14695a(m14694b(str), new ThreadPoolExecutor.DiscardPolicy());
        m14697a(str, a);
        return a;
    }

    /* renamed from: a */
    public static ExecutorService m14695a(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }

    /* renamed from: a */
    public static void m14697a(String str, ExecutorService executorService) {
        m14696a(str, executorService, 2L, TimeUnit.SECONDS);
    }

    /* renamed from: a */
    public static void m14696a(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        Runtime runtime = Runtime.getRuntime();
        C9619b bVar = new C9619b(str, executorService, j, timeUnit);
        runtime.addShutdownHook(new Thread(bVar, "Crashlytics Shutdown Hook for " + str));
    }

    /* renamed from: b */
    public static final ThreadFactory m14694b(String str) {
        return new ThreadFactoryC9617a(str, new AtomicLong(1L));
    }
}
