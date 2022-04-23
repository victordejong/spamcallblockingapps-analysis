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

    /* renamed from: ǃ  reason: contains not printable characters */
    private static AFExecutor f24;

    /* renamed from: ı  reason: contains not printable characters */
    Executor f25;

    /* renamed from: ɩ  reason: contains not printable characters */
    ScheduledExecutorService f26;

    /* renamed from: Ι  reason: contains not printable characters */
    final ThreadFactory f27 = new ThreadFactory() { // from class: com.appsflyer.AFExecutor.1
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

    /* renamed from: ι  reason: contains not printable characters */
    ScheduledExecutorService f28;

    private AFExecutor() {
    }

    public static AFExecutor getInstance() {
        if (f24 == null) {
            f24 = new AFExecutor();
        }
        return f24;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ɩ  reason: contains not printable characters */
    public static void m782(ExecutorService executorService) {
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
        Executor executor = this.f25;
        if (executor == null || ((executor instanceof ThreadPoolExecutor) && (((ThreadPoolExecutor) executor).isShutdown() || ((ThreadPoolExecutor) this.f25).isTerminated() || ((ThreadPoolExecutor) this.f25).isTerminating()))) {
            this.f25 = Executors.newFixedThreadPool(2, this.f27);
        }
        return this.f25;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Ι  reason: contains not printable characters */
    public final ScheduledThreadPoolExecutor m783() {
        ScheduledExecutorService scheduledExecutorService = this.f28;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown() || this.f28.isTerminated()) {
            this.f28 = Executors.newScheduledThreadPool(2, this.f27);
        }
        return (ScheduledThreadPoolExecutor) this.f28;
    }
}
