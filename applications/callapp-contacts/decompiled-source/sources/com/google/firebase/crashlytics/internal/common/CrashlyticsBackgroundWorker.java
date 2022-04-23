package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker.class */
public class CrashlyticsBackgroundWorker {
    private final Executor executor;
    private h<Void> tail = k.a((Object) null);
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

    private <T> h<Void> ignoreResult(h<T> hVar) {
        return hVar.a(this.executor, (b<T, Void>) new b<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.4
            @Override // com.google.android.gms.tasks.b
            public Void then(h<T> hVar2) throws Exception {
                return null;
            }
        });
    }

    private boolean isRunningOnThread() {
        return Boolean.TRUE.equals(this.isExecutorThread.get());
    }

    private <T> b<Void, T> newContinuation(final Callable<T> callable) {
        return new b<Void, T>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.3
            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            @Override // com.google.android.gms.tasks.b
            public T then(h<Void> hVar) throws Exception {
                return callable.call();
            }
        };
    }

    public void checkRunningOnThread() {
        if (!isRunningOnThread()) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }

    public Executor getExecutor() {
        return this.executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h<Void> submit(final Runnable runnable) {
        return submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.2
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                runnable.run();
                return null;
            }
        });
    }

    public <T> h<T> submit(Callable<T> callable) {
        h<T> a2;
        synchronized (this.tailLock) {
            a2 = this.tail.a(this.executor, (b<Void, TContinuationResult>) newContinuation(callable));
            this.tail = ignoreResult(a2);
        }
        return a2;
    }

    public <T> h<T> submitTask(Callable<h<T>> callable) {
        h<T> b2;
        synchronized (this.tailLock) {
            b2 = this.tail.b(this.executor, newContinuation(callable));
            this.tail = ignoreResult(b2);
        }
        return b2;
    }
}
