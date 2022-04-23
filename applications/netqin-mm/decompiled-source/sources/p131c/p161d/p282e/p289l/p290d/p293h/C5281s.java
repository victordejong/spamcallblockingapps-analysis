package p131c.p161d.p282e.p289l.p290d.p293h;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* renamed from: c.d.e.l.d.h.s */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/s.class */
public final class C5281s {

    /* renamed from: c.d.e.l.d.h.s$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/s$a.class */
    public class ThreadFactoryC5282a implements ThreadFactory {

        /* renamed from: a */
        public final /* synthetic */ String f18056a;

        /* renamed from: b */
        public final /* synthetic */ AtomicLong f18057b;

        /* renamed from: c.d.e.l.d.h.s$a$a */
        /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/s$a$a.class */
        public class C5283a extends AbstractRunnableC5216d {

            /* renamed from: a */
            public final /* synthetic */ Runnable f18058a;

            public C5283a(ThreadFactoryC5282a aVar, Runnable runnable) {
                this.f18058a = runnable;
            }

            @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractRunnableC5216d
            /* renamed from: a */
            public void mo23824a() {
                this.f18058a.run();
            }
        }

        public ThreadFactoryC5282a(String str, AtomicLong atomicLong) {
            this.f18056a = str;
            this.f18057b = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(new C5283a(this, runnable));
            newThread.setName(this.f18056a + this.f18057b.getAndIncrement());
            return newThread;
        }
    }

    /* renamed from: c.d.e.l.d.h.s$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/s$b.class */
    public class C5284b extends AbstractRunnableC5216d {

        /* renamed from: a */
        public final /* synthetic */ String f18059a;

        /* renamed from: b */
        public final /* synthetic */ ExecutorService f18060b;

        /* renamed from: c */
        public final /* synthetic */ long f18061c;

        /* renamed from: d */
        public final /* synthetic */ TimeUnit f18062d;

        public C5284b(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
            this.f18059a = str;
            this.f18060b = executorService;
            this.f18061c = j;
            this.f18062d = timeUnit;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractRunnableC5216d
        /* renamed from: a */
        public void mo23824a() {
            try {
                C5192b a = C5192b.m24319a();
                a.m24317a("Executing shutdown hook for " + this.f18059a);
                this.f18060b.shutdown();
                if (!this.f18060b.awaitTermination(this.f18061c, this.f18062d)) {
                    C5192b a2 = C5192b.m24319a();
                    a2.m24317a(this.f18059a + " did not shut down in the allocated time. Requesting immediate shutdown.");
                    this.f18060b.shutdownNow();
                }
            } catch (InterruptedException e) {
                C5192b.m24319a().m24317a(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f18059a));
                this.f18060b.shutdownNow();
            }
        }
    }

    /* renamed from: a */
    public static ExecutorService m24067a(String str) {
        ExecutorService a = m24064a(m24063b(str), new ThreadPoolExecutor.DiscardPolicy());
        m24066a(str, a);
        return a;
    }

    /* renamed from: a */
    public static ExecutorService m24064a(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }

    /* renamed from: a */
    public static void m24066a(String str, ExecutorService executorService) {
        m24065a(str, executorService, 2L, TimeUnit.SECONDS);
    }

    /* renamed from: a */
    public static void m24065a(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        Runtime runtime = Runtime.getRuntime();
        C5284b bVar = new C5284b(str, executorService, j, timeUnit);
        runtime.addShutdownHook(new Thread(bVar, "Crashlytics Shutdown Hook for " + str));
    }

    /* renamed from: b */
    public static final ThreadFactory m24063b(String str) {
        return new ThreadFactoryC5282a(str, new AtomicLong(1L));
    }
}
