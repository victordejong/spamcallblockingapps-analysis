package com.appsflyer;

import android.net.TrafficStats;
import androidx.annotation.NonNull;
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

    /* renamed from: ι */
    public static AFExecutor f1628;

    /* renamed from: ı */
    public final ThreadFactory f1629 = new ThreadFactory() { // from class: com.appsflyer.AFExecutor.1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(@NonNull final Runnable runnable) {
            return new Thread(new Runnable() { // from class: com.appsflyer.AFExecutor.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    TrafficStats.setThreadStatsTag("AppsFlyer".hashCode());
                    runnable.run();
                }
            });
        }
    };

    /* renamed from: ǃ */
    public ScheduledExecutorService f1630;

    /* renamed from: ɩ */
    public ScheduledExecutorService f1631;

    /* renamed from: Ι */
    public Executor f1632;

    public static AFExecutor getInstance() {
        if (f1628 == null) {
            f1628 = new AFExecutor();
        }
        return f1628;
    }

    /* renamed from: ɩ */
    public static void m36299(ExecutorService executorService) {
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
        Executor executor = this.f1632;
        if (executor == null || ((executor instanceof ThreadPoolExecutor) && (((ThreadPoolExecutor) executor).isShutdown() || ((ThreadPoolExecutor) this.f1632).isTerminated() || ((ThreadPoolExecutor) this.f1632).isTerminating()))) {
            this.f1632 = Executors.newFixedThreadPool(2, this.f1629);
        }
        return this.f1632;
    }

    /* renamed from: ι */
    public final ScheduledThreadPoolExecutor m36298() {
        ScheduledExecutorService scheduledExecutorService = this.f1631;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown() || this.f1631.isTerminated()) {
            this.f1631 = Executors.newScheduledThreadPool(2, this.f1629);
        }
        return (ScheduledThreadPoolExecutor) this.f1631;
    }
}
