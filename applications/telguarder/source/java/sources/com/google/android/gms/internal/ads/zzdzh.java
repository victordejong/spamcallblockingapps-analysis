package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzh.class */
public final class zzdzh<V> extends zzdzf<V> {
    private final zzdzw<V> zzial;

    public zzdzh(zzdzw<V> zzdzwVar) {
        this.zzial = (zzdzw) zzdwl.checkNotNull(zzdzwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdyk, com.google.android.gms.internal.ads.zzdzw
    public final void addListener(Runnable runnable, Executor executor) {
        this.zzial.addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdyk, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.zzial.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.zzdyk, java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.zzial.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdyk, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.zzial.get(j, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.zzdyk, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzial.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzdyk, java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzial.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String toString() {
        return this.zzial.toString();
    }
}
