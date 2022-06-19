package com.appsflyer;

import android.net.TrafficStats;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFExecutor.class */
public class AFExecutor {

    /* renamed from: ǃ */
    private static AFExecutor f12700;

    /* renamed from: ı */
    Executor f12701;

    /* renamed from: ɩ */
    ScheduledExecutorService f12702;

    /* renamed from: Ι */
    final ThreadFactory f12703 = new ThreadFactory() { // from class: com.appsflyer.AFExecutor.1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(final Runnable runnable) {
            return new Thread(new Runnable() { // from class: com.appsflyer.AFExecutor.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    TrafficStats.setThreadStatsTag("AppsFlyer".hashCode());
                    runnable.run();
                }
            });
        }
    };

    /* renamed from: ι */
    ScheduledExecutorService f12704;

    private AFExecutor() {
    }

    public static AFExecutor getInstance() {
        if (f12700 == null) {
            f12700 = new AFExecutor();
        }
        return f12700;
    }

    /* renamed from: ɩ */
    public static void m38159(ExecutorService executorService) {
        try {
            try {
                AFLogger.afRDLog("shut downing executor ...");
                executorService.shutdown();
                executorService.awaitTermination(10L, TimeUnit.SECONDS);
                if (!executorService.isTerminated()) {
                    AFLogger.afRDLog("killing non-finished tasks");
                }
                executorService.shutdownNow();
            } catch (InterruptedException e) {
                AFLogger.afRDLog("InterruptedException!!!");
                if (!executorService.isTerminated()) {
                    AFLogger.afRDLog("killing non-finished tasks");
                }
                executorService.shutdownNow();
            }
        } catch (Throwable th) {
            if (!executorService.isTerminated()) {
                AFLogger.afRDLog("killing non-finished tasks");
            }
            executorService.shutdownNow();
            throw th;
        }
    }

    public Executor getThreadPoolExecutor() {
        Executor executor = this.f12701;
        if (executor == null || ((executor instanceof ThreadPoolExecutor) && (((ThreadPoolExecutor) executor).isShutdown() || ((ThreadPoolExecutor) this.f12701).isTerminated() || ((ThreadPoolExecutor) this.f12701).isTerminating()))) {
            this.f12701 = Executors.newFixedThreadPool(2, this.f12703);
        }
        return this.f12701;
    }

    /* renamed from: Ι */
    public final ScheduledThreadPoolExecutor m38158() {
        ScheduledExecutorService scheduledExecutorService = this.f12704;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown() || this.f12704.isTerminated()) {
            this.f12704 = Executors.newScheduledThreadPool(2, this.f12703);
        }
        return (ScheduledThreadPoolExecutor) this.f12704;
    }
}
