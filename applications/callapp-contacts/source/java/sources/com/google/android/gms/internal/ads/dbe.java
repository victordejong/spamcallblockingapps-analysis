package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbe.class */
public final class dbe<V> extends dbc<V> {

    /* renamed from: a */
    private final dbt<V> f46914a;

    public dbe(dbt<V> dbtVar) {
        this.f46914a = (dbt) cyg.m17060a(dbtVar);
    }

    @Override // com.google.android.gms.internal.ads.dag, com.google.android.gms.internal.ads.dbt
    public final void addListener(Runnable runnable, Executor executor) {
        this.f46914a.addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f46914a.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.f46914a.get();
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f46914a.get(j, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f46914a.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f46914a.isDone();
    }

    @Override // com.google.android.gms.internal.ads.dag
    public final String toString() {
        return this.f46914a.toString();
    }
}
