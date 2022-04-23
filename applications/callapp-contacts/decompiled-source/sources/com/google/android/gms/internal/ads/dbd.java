package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbd.class */
public abstract class dbd<V> extends cyr implements Future<V> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract Future<? extends V> a();

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return a().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return (V) a().get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (V) a().get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return a().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return a().isDone();
    }
}
