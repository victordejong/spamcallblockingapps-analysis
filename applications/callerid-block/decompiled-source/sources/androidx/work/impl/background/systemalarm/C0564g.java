package androidx.work.impl.background.systemalarm;

import androidx.work.AbstractC0555f;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.impl.background.systemalarm.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/g.class */
class C0564g {

    /* renamed from: f */
    private static final String f3008f = AbstractC0555f.m11738f("WorkTimer");

    /* renamed from: a */
    private final ThreadFactory f3009a;

    /* renamed from: b */
    private final ScheduledExecutorService f3010b;

    /* renamed from: c */
    final Map<String, RunnableC0567c> f3011c = new HashMap();

    /* renamed from: d */
    final Map<String, AbstractC0566b> f3012d = new HashMap();

    /* renamed from: e */
    final Object f3013e = new Object();

    /* renamed from: androidx.work.impl.background.systemalarm.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/g$a.class */
    class ThreadFactoryC0565a implements ThreadFactory {

        /* renamed from: a */
        private int f3014a = 0;

        ThreadFactoryC0565a(C0564g gVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("WorkManager-WorkTimer-thread-" + this.f3014a);
            this.f3014a = this.f3014a + 1;
            return newThread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.background.systemalarm.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/g$b.class */
    public interface AbstractC0566b {
        /* renamed from: b */
        void m11723b(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.background.systemalarm.g$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/g$c.class */
    public static class RunnableC0567c implements Runnable {

        /* renamed from: b */
        private final C0564g f3015b;

        /* renamed from: c */
        private final String f3016c;

        RunnableC0567c(C0564g gVar, String str) {
            this.f3015b = gVar;
            this.f3016c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f3015b.f3013e) {
                if (this.f3015b.f3011c.remove(this.f3016c) != null) {
                    AbstractC0566b remove = this.f3015b.f3012d.remove(this.f3016c);
                    if (remove != null) {
                        remove.m11723b(this.f3016c);
                    }
                } else {
                    AbstractC0555f.m11741c().m11743a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f3016c), new Throwable[0]);
                }
            }
        }
    }

    C0564g() {
        ThreadFactoryC0565a aVar = new ThreadFactoryC0565a(this);
        this.f3009a = aVar;
        this.f3010b = Executors.newSingleThreadScheduledExecutor(aVar);
    }

    /* renamed from: a */
    void m11726a() {
        if (!this.f3010b.isShutdown()) {
            this.f3010b.shutdownNow();
        }
    }

    /* renamed from: b */
    void m11725b(String str, long j, AbstractC0566b bVar) {
        synchronized (this.f3013e) {
            AbstractC0555f.m11741c().m11743a(f3008f, String.format("Starting timer for %s", str), new Throwable[0]);
            m11724c(str);
            RunnableC0567c cVar = new RunnableC0567c(this, str);
            this.f3011c.put(str, cVar);
            this.f3012d.put(str, bVar);
            this.f3010b.schedule(cVar, j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: c */
    void m11724c(String str) {
        synchronized (this.f3013e) {
            if (this.f3011c.remove(str) != null) {
                AbstractC0555f.m11741c().m11743a(f3008f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f3012d.remove(str);
            }
        }
    }
}
