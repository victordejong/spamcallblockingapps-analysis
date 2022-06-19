package com.appsflyer.internal;

import android.net.TrafficStats;
import android.support.annotation.NonNull;
import com.appsflyer.AFLogger;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.appsflyer.internal.k */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/k.class */
public final class C0821k {
    public static C0821k values;
    public ScheduledExecutorService AFInAppEventParameterName;
    public final ThreadFactory AFInAppEventType = new ThreadFactory() { // from class: com.appsflyer.internal.k.4
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(@NonNull final Runnable runnable) {
            return new Thread(new Runnable() { // from class: com.appsflyer.internal.k.4.5
                @Override // java.lang.Runnable
                public final void run() {
                    TrafficStats.setThreadStatsTag("AppsFlyer".hashCode());
                    runnable.run();
                }
            });
        }
    };
    public Executor AFKeystoreWrapper;
    public ScheduledExecutorService valueOf;

    public static void valueOf(ExecutorService executorService) {
        try {
            try {
                AFLogger.AFInAppEventParameterName("shut downing executor ...");
                executorService.shutdown();
                executorService.awaitTermination(10L, TimeUnit.SECONDS);
                if (!executorService.isTerminated()) {
                    AFLogger.AFInAppEventParameterName("killing non-finished tasks");
                }
                executorService.shutdownNow();
            } catch (InterruptedException e) {
                AFLogger.AFInAppEventParameterName("InterruptedException!!!");
                if (!executorService.isTerminated()) {
                    AFLogger.AFInAppEventParameterName("killing non-finished tasks");
                }
                executorService.shutdownNow();
            }
        } catch (Throwable th) {
            if (!executorService.isTerminated()) {
                AFLogger.AFInAppEventParameterName("killing non-finished tasks");
            }
            executorService.shutdownNow();
            throw th;
        }
    }

    public final ScheduledThreadPoolExecutor AFInAppEventType() {
        ScheduledExecutorService scheduledExecutorService = this.valueOf;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown() || this.valueOf.isTerminated()) {
            this.valueOf = Executors.newScheduledThreadPool(2, this.AFInAppEventType);
        }
        return (ScheduledThreadPoolExecutor) this.valueOf;
    }

    public final Executor AFKeystoreWrapper() {
        Executor executor = this.AFKeystoreWrapper;
        if (executor == null || ((executor instanceof ThreadPoolExecutor) && (((ThreadPoolExecutor) executor).isShutdown() || ((ThreadPoolExecutor) this.AFKeystoreWrapper).isTerminated() || ((ThreadPoolExecutor) this.AFKeystoreWrapper).isTerminating()))) {
            this.AFKeystoreWrapper = Executors.newFixedThreadPool(2, this.AFInAppEventType);
        }
        return this.AFKeystoreWrapper;
    }
}
