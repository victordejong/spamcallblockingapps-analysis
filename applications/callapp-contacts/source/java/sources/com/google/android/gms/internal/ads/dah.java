package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dah.class */
public abstract class dah extends AbstractExecutorService implements dbs {
    @Override // com.google.android.gms.internal.ads.dbs
    /* renamed from: a */
    public final dbt<?> submit(Runnable runnable) {
        return (dbt) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.dbs
    /* renamed from: a */
    public final <T> dbt<T> submit(Callable<T> callable) {
        return (dbt) super.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return dcf.m16878a(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return dcf.m16877a((Callable) callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (dbt) super.submit(runnable, obj);
    }
}
