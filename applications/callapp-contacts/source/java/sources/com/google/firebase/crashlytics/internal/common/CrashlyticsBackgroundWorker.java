package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker.class */
public class CrashlyticsBackgroundWorker {
    private final Executor executor;
    private AbstractC14185h<Void> tail = C14188k.m11464a((Object) null);
    private final Object tailLock = new Object();
    private final ThreadLocal<Boolean> isExecutorThread = new ThreadLocal<>();

    public CrashlyticsBackgroundWorker(Executor executor) {
        this.executor = executor;
        executor.execute(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.1
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsBackgroundWorker.this.isExecutorThread.set(Boolean.TRUE);
            }
        });
    }

    private <T> AbstractC14185h<Void> ignoreResult(AbstractC14185h<T> abstractC14185h) {
        return abstractC14185h.mo11484a(this.executor, (AbstractC14179b<T, Void>) new AbstractC14179b<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.4
            @Override // com.google.android.gms.tasks.AbstractC14179b
            public Void then(AbstractC14185h<T> abstractC14185h2) throws Exception {
                return null;
            }
        });
    }

    private boolean isRunningOnThread() {
        return Boolean.TRUE.equals(this.isExecutorThread.get());
    }

    private <T> AbstractC14179b<Void, T> newContinuation(final Callable<T> callable) {
        return new AbstractC14179b<Void, T>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.3
            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            @Override // com.google.android.gms.tasks.AbstractC14179b
            public T then(AbstractC14185h<Void> abstractC14185h) throws Exception {
                return callable.call();
            }
        };
    }

    public void checkRunningOnThread() {
        if (isRunningOnThread()) {
            return;
        }
        throw new IllegalStateException("Not running on background worker thread as intended.");
    }

    public Executor getExecutor() {
        return this.executor;
    }

    public AbstractC14185h<Void> submit(final Runnable runnable) {
        return submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.2
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                runnable.run();
                return null;
            }
        });
    }

    public <T> AbstractC14185h<T> submit(Callable<T> callable) {
        AbstractC14185h<T> mo11484a;
        synchronized (this.tailLock) {
            mo11484a = this.tail.mo11484a(this.executor, (AbstractC14179b<Void, TContinuationResult>) newContinuation(callable));
            this.tail = ignoreResult(mo11484a);
        }
        return mo11484a;
    }

    public <T> AbstractC14185h<T> submitTask(Callable<AbstractC14185h<T>> callable) {
        AbstractC14185h<T> mo11477b;
        synchronized (this.tailLock) {
            mo11477b = this.tail.mo11477b(this.executor, newContinuation(callable));
            this.tail = ignoreResult(mo11477b);
        }
        return mo11477b;
    }
}
