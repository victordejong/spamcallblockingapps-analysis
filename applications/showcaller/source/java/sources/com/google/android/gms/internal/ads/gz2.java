package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gz2.class */
public abstract class gz2 extends AbstractExecutorService implements s03 {
    @Override // com.google.android.gms.internal.ads.s03
    /* renamed from: a */
    public final <T> r03<T> mo11185a(Callable<T> callable) {
        return (r03) super.submit(callable);
    }

    @Override // com.google.android.gms.internal.ads.s03
    /* renamed from: d */
    public final r03<?> mo11184d(Runnable runnable) {
        return (r03) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return e13.m15608F(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new e13(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Runnable runnable) {
        return (r03) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (r03) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* bridge */ /* synthetic */ Future submit(Callable callable) {
        return (r03) super.submit(callable);
    }
}
