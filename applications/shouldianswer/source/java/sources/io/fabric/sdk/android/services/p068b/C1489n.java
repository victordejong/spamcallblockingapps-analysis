package io.fabric.sdk.android.services.p068b;

import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: io.fabric.sdk.android.services.b.n */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/n.class */
public final class C1489n {
    /* renamed from: a */
    public static ExecutorService m3456a(String str) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(m3452c(str));
        m3455a(str, newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }

    /* renamed from: a */
    private static final void m3455a(String str, ExecutorService executorService) {
        m3454a(str, executorService, 2L, TimeUnit.SECONDS);
    }

    /* renamed from: a */
    public static final void m3454a(final String str, final ExecutorService executorService, final long j, final TimeUnit timeUnit) {
        Runtime runtime = Runtime.getRuntime();
        AbstractRunnableC1479h abstractRunnableC1479h = new AbstractRunnableC1479h() { // from class: io.fabric.sdk.android.services.b.n.2
            @Override // io.fabric.sdk.android.services.p068b.AbstractRunnableC1479h
            public void onRun() {
                try {
                    AbstractC1462k m3572g = C1449c.m3572g();
                    m3572g.mo3552a("Fabric", "Executing shutdown hook for " + str);
                    executorService.shutdown();
                    if (executorService.awaitTermination(j, timeUnit)) {
                        return;
                    }
                    AbstractC1462k m3572g2 = C1449c.m3572g();
                    m3572g2.mo3552a("Fabric", str + " did not shut down in the allocated time. Requesting immediate shutdown.");
                    executorService.shutdownNow();
                } catch (InterruptedException e) {
                    C1449c.m3572g().mo3552a("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", str));
                    executorService.shutdownNow();
                }
            }
        };
        runtime.addShutdownHook(new Thread(abstractRunnableC1479h, "Crashlytics Shutdown Hook for " + str));
    }

    /* renamed from: b */
    public static ScheduledExecutorService m3453b(String str) {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(m3452c(str));
        m3455a(str, newSingleThreadScheduledExecutor);
        return newSingleThreadScheduledExecutor;
    }

    /* renamed from: c */
    public static final ThreadFactory m3452c(final String str) {
        final AtomicLong atomicLong = new AtomicLong(1L);
        return new ThreadFactory() { // from class: io.fabric.sdk.android.services.b.n.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(final Runnable runnable) {
                Thread newThread = Executors.defaultThreadFactory().newThread(new AbstractRunnableC1479h() { // from class: io.fabric.sdk.android.services.b.n.1.1
                    @Override // io.fabric.sdk.android.services.p068b.AbstractRunnableC1479h
                    public void onRun() {
                        runnable.run();
                    }
                });
                newThread.setName(str + atomicLong.getAndIncrement());
                return newThread;
            }
        };
    }
}
