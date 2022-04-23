package p530d.p541c.p543b0.p555g;

import io.reactivex.internal.schedulers.RxThreadFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: d.c.b0.g.g */
/* loaded from: classes2-dex2jar.jar:d/c/b0/g/g.class */
public final class C9785g {

    /* renamed from: a */
    public static final boolean f36966a;

    /* renamed from: b */
    public static final int f36967b;

    /* renamed from: c */
    public static final AtomicReference<ScheduledExecutorService> f36968c = new AtomicReference<>();

    /* renamed from: d */
    public static final Map<ScheduledThreadPoolExecutor, Object> f36969d = new ConcurrentHashMap();

    /* renamed from: d.c.b0.g.g$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/g$a.class */
    public static final class C9786a {

        /* renamed from: a */
        public boolean f36970a;

        /* renamed from: b */
        public int f36971b;

        /* renamed from: a */
        public void m2028a(Properties properties) {
            if (properties.containsKey("rx2.purge-enabled")) {
                this.f36970a = Boolean.parseBoolean(properties.getProperty("rx2.purge-enabled"));
            } else {
                this.f36970a = true;
            }
            if (!this.f36970a || !properties.containsKey("rx2.purge-period-seconds")) {
                this.f36971b = 1;
                return;
            }
            try {
                this.f36971b = Integer.parseInt(properties.getProperty("rx2.purge-period-seconds"));
            } catch (NumberFormatException e) {
                this.f36971b = 1;
            }
        }
    }

    /* renamed from: d.c.b0.g.g$b */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/g$b.class */
    public static final class RunnableC9787b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            Iterator it = new ArrayList(C9785g.f36969d.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    C9785g.f36969d.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    static {
        Properties properties = System.getProperties();
        C9786a aVar = new C9786a();
        aVar.m2028a(properties);
        f36966a = aVar.f36970a;
        f36967b = aVar.f36971b;
        m2032a();
    }

    /* renamed from: a */
    public static ScheduledExecutorService m2031a(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        m2029a(f36966a, newScheduledThreadPool);
        return newScheduledThreadPool;
    }

    /* renamed from: a */
    public static void m2032a() {
        m2030a(f36966a);
    }

    /* renamed from: a */
    public static void m2030a(boolean z) {
        if (z) {
            while (true) {
                ScheduledExecutorService scheduledExecutorService = f36968c.get();
                if (scheduledExecutorService == null) {
                    ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge"));
                    if (f36968c.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                        RunnableC9787b bVar = new RunnableC9787b();
                        int i = f36967b;
                        newScheduledThreadPool.scheduleAtFixedRate(bVar, i, i, TimeUnit.SECONDS);
                        return;
                    }
                    newScheduledThreadPool.shutdownNow();
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public static void m2029a(boolean z, ScheduledExecutorService scheduledExecutorService) {
        if (z && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f36969d.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }
}
