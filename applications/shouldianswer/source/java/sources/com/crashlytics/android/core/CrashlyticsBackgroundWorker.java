package com.crashlytics.android.core;

import android.os.Looper;
import io.fabric.sdk.android.C1449c;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsBackgroundWorker.class */
public class CrashlyticsBackgroundWorker {
    private final ExecutorService executorService;

    public CrashlyticsBackgroundWorker(ExecutorService executorService) {
        this.executorService = executorService;
    }

    public Future<?> submit(final Runnable runnable) {
        try {
            return this.executorService.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsBackgroundWorker.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } catch (Exception e) {
                        C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Failed to execute task.", e);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    public <T> Future<T> submit(final Callable<T> callable) {
        try {
            return this.executorService.submit(new Callable<T>() { // from class: com.crashlytics.android.core.CrashlyticsBackgroundWorker.2
                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // java.util.concurrent.Callable
                public T call() {
                    try {
                        return callable.call();
                    } catch (Exception e) {
                        C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Failed to execute task.", e);
                        return null;
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    public <T> T submitAndWait(Callable<T> callable) {
        try {
            return Looper.getMainLooper() == Looper.myLooper() ? this.executorService.submit(callable).get(4L, TimeUnit.SECONDS) : this.executorService.submit(callable).get();
        } catch (RejectedExecutionException e) {
            C1449c.m3572g().mo3552a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        } catch (Exception e2) {
            C1449c.m3572g().mo3545e(CrashlyticsCore.TAG, "Failed to execute task.", e2);
            return null;
        }
    }
}
