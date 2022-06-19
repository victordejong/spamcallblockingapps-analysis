package androidx.work.impl.utils;

import androidx.work.AbstractC1293l;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.impl.utils.l */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/l.class */
public class C1284l {

    /* renamed from: d */
    private static final String f4309d = AbstractC1293l.m17541a("WorkTimer");

    /* renamed from: e */
    private final ThreadFactory f4313e = new ThreadFactory() { // from class: androidx.work.impl.utils.l.1

        /* renamed from: b */
        private int f4316b = 0;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("WorkManager-WorkTimer-thread-" + this.f4316b);
            this.f4316b++;
            return newThread;
        }
    };

    /* renamed from: a */
    final Map<String, RunnableC1287b> f4310a = new HashMap();

    /* renamed from: b */
    final Map<String, AbstractC1286a> f4311b = new HashMap();

    /* renamed from: c */
    final Object f4312c = new Object();

    /* renamed from: f */
    private final ScheduledExecutorService f4314f = Executors.newSingleThreadScheduledExecutor(this.f4313e);

    /* renamed from: androidx.work.impl.utils.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/l$a.class */
    public interface AbstractC1286a {
        /* renamed from: a */
        void mo17558a(String str);
    }

    /* renamed from: androidx.work.impl.utils.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/l$b.class */
    public static class RunnableC1287b implements Runnable {

        /* renamed from: a */
        private final C1284l f4317a;

        /* renamed from: b */
        private final String f4318b;

        RunnableC1287b(C1284l c1284l, String str) {
            this.f4317a = c1284l;
            this.f4318b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f4317a.f4312c) {
                if (this.f4317a.f4310a.remove(this.f4318b) != null) {
                    AbstractC1286a remove = this.f4317a.f4311b.remove(this.f4318b);
                    if (remove != null) {
                        remove.mo17558a(this.f4318b);
                    }
                } else {
                    AbstractC1293l.m17543a().mo17539b("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f4318b), new Throwable[0]);
                }
            }
        }
    }

    /* renamed from: a */
    public void m17561a() {
        if (!this.f4314f.isShutdown()) {
            this.f4314f.shutdownNow();
        }
    }

    /* renamed from: a */
    public void m17560a(String str) {
        synchronized (this.f4312c) {
            if (this.f4310a.remove(str) != null) {
                AbstractC1293l.m17543a().mo17539b(f4309d, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f4311b.remove(str);
            }
        }
    }

    /* renamed from: a */
    public void m17559a(String str, long j, AbstractC1286a abstractC1286a) {
        synchronized (this.f4312c) {
            AbstractC1293l.m17543a().mo17539b(f4309d, String.format("Starting timer for %s", str), new Throwable[0]);
            m17560a(str);
            RunnableC1287b runnableC1287b = new RunnableC1287b(this, str);
            this.f4310a.put(str, runnableC1287b);
            this.f4311b.put(str, abstractC1286a);
            this.f4314f.schedule(runnableC1287b, j, TimeUnit.MILLISECONDS);
        }
    }
}
