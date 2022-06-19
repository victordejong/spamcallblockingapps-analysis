package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqi.class */
public abstract class cqi extends AbstractExecutorService implements crs {
    @Override // com.google.android.gms.internal.ads.crs
    /* renamed from: a */
    public final crt<?> submit(Runnable runnable) {
        return (crt) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.crs
    /* renamed from: a */
    public final <T> crt<T> submit(Callable<T> callable) {
        return (crt) super.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return csh.m10746a(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return csh.m10745a((Callable) callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public /* synthetic */ Future submit(Runnable runnable, @NullableDecl Object obj) {
        return (crt) super.submit(runnable, obj);
    }
}
