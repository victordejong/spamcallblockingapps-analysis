package io.reactivex.internal.schedulers;

import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerPoolFactory.class */
public final class SchedulerPoolFactory {

    /* renamed from: a */
    public static final boolean f19302a;

    /* renamed from: b */
    public static final int f19303b;

    /* renamed from: c */
    static final AtomicReference<ScheduledExecutorService> f19304c = new AtomicReference<>();

    /* renamed from: d */
    static final Map<ScheduledThreadPoolExecutor, Object> f19305d = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask.class */
    public static final class ScheduledTask implements Runnable {
        ScheduledTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = new ArrayList(SchedulerPoolFactory.f19305d.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    SchedulerPoolFactory.f19305d.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor.class */
    static final class SystemPropertyAccessor implements Function<String, String> {
        SystemPropertyAccessor() {
        }

        /* renamed from: a */
        public String apply(String str) throws Exception {
            return System.getProperty(str);
        }
    }

    static {
        SystemPropertyAccessor systemPropertyAccessor = new SystemPropertyAccessor();
        boolean b = m3510b(true, "rx2.purge-enabled", true, true, systemPropertyAccessor);
        f19302a = b;
        f19303b = m3509c(b, "rx2.purge-period-seconds", 1, 1, systemPropertyAccessor);
        m3508d();
    }

    private SchedulerPoolFactory() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static ScheduledExecutorService m3511a(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        m3507e(f19302a, newScheduledThreadPool);
        return newScheduledThreadPool;
    }

    /* renamed from: b */
    static boolean m3510b(boolean z, String str, boolean z2, boolean z3, Function<String, String> function) {
        if (!z) {
            return z3;
        }
        try {
            String apply = function.apply(str);
            return apply == null ? z2 : "true".equals(apply);
        } catch (Throwable th) {
            return z2;
        }
    }

    /* renamed from: c */
    static int m3509c(boolean z, String str, int i, int i2, Function<String, String> function) {
        if (!z) {
            return i2;
        }
        try {
            String apply = function.apply(str);
            return apply == null ? i : Integer.parseInt(apply);
        } catch (Throwable th) {
            return i;
        }
    }

    /* renamed from: d */
    public static void m3508d() {
        m3506f(f19302a);
    }

    /* renamed from: e */
    static void m3507e(boolean z, ScheduledExecutorService scheduledExecutorService) {
        if (z && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f19305d.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }

    /* renamed from: f */
    static void m3506f(boolean z) {
        if (z) {
            while (true) {
                ScheduledExecutorService scheduledExecutorService = f19304c.get();
                if (scheduledExecutorService == null) {
                    ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge"));
                    if (f19304c.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                        ScheduledTask scheduledTask = new ScheduledTask();
                        int i = f19303b;
                        newScheduledThreadPool.scheduleAtFixedRate(scheduledTask, i, i, TimeUnit.SECONDS);
                        return;
                    }
                    newScheduledThreadPool.shutdownNow();
                } else {
                    return;
                }
            }
        }
    }
}
