package androidx.work.impl.utils;

import androidx.work.AbstractC1404j;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.impl.utils.n */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n.class */
public class C1395n {

    /* renamed from: a */
    private static final String f5718a = AbstractC1404j.m30159f("WorkTimer");

    /* renamed from: b */
    private final ThreadFactory f5719b;

    /* renamed from: c */
    private final ScheduledExecutorService f5720c;

    /* renamed from: d */
    final Map<String, RunnableC1398c> f5721d = new HashMap();

    /* renamed from: e */
    final Map<String, AbstractC1397b> f5722e = new HashMap();

    /* renamed from: f */
    final Object f5723f = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.utils.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n$a.class */
    public class ThreadFactoryC1396a implements ThreadFactory {

        /* renamed from: a */
        private int f5724a = 0;

        ThreadFactoryC1396a() {
            C1395n.this = r4;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("WorkManager-WorkTimer-thread-" + this.f5724a);
            this.f5724a = this.f5724a + 1;
            return newThread;
        }
    }

    /* renamed from: androidx.work.impl.utils.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n$b.class */
    public interface AbstractC1397b {
        /* renamed from: a */
        void mo30174a(String str);
    }

    /* renamed from: androidx.work.impl.utils.n$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n$c.class */
    public static class RunnableC1398c implements Runnable {

        /* renamed from: d */
        private final C1395n f5726d;

        /* renamed from: e */
        private final String f5727e;

        RunnableC1398c(C1395n c1395n, String str) {
            this.f5726d = c1395n;
            this.f5727e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f5726d.f5723f) {
                if (this.f5726d.f5721d.remove(this.f5727e) != null) {
                    AbstractC1397b remove = this.f5726d.f5722e.remove(this.f5727e);
                    if (remove != null) {
                        remove.mo30174a(this.f5727e);
                    }
                } else {
                    AbstractC1404j.m30161c().mo30158a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f5727e), new Throwable[0]);
                }
            }
        }
    }

    public C1395n() {
        ThreadFactoryC1396a threadFactoryC1396a = new ThreadFactoryC1396a();
        this.f5719b = threadFactoryC1396a;
        this.f5720c = Executors.newSingleThreadScheduledExecutor(threadFactoryC1396a);
    }

    /* renamed from: a */
    public void m30177a() {
        if (!this.f5720c.isShutdown()) {
            this.f5720c.shutdownNow();
        }
    }

    /* renamed from: b */
    public void m30176b(String str, long j, AbstractC1397b abstractC1397b) {
        synchronized (this.f5723f) {
            AbstractC1404j.m30161c().mo30158a(f5718a, String.format("Starting timer for %s", str), new Throwable[0]);
            m30175c(str);
            RunnableC1398c runnableC1398c = new RunnableC1398c(this, str);
            this.f5721d.put(str, runnableC1398c);
            this.f5722e.put(str, abstractC1397b);
            this.f5720c.schedule(runnableC1398c, j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: c */
    public void m30175c(String str) {
        synchronized (this.f5723f) {
            if (this.f5721d.remove(str) != null) {
                AbstractC1404j.m30161c().mo30158a(f5718a, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f5722e.remove(str);
            }
        }
    }
}
