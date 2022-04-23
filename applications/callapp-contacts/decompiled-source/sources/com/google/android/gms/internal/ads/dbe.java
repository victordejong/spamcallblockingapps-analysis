package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbe.class */
public final class dbe<V> extends dbc<V> {

    /* renamed from: a  reason: collision with root package name */
    private final dbt<V> f26695a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dbe(dbt<V> dbtVar) {
        this.f26695a = (dbt) cyg.a(dbtVar);
    }

    @Override // com.google.android.gms.internal.ads.dag, com.google.android.gms.internal.ads.dbt
    public final void addListener(Runnable runnable, Executor executor) {
        this.f26695a.addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f26695a.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.f26695a.get();
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f26695a.get(j, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f26695a.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f26695a.isDone();
    }

    @Override // com.google.android.gms.internal.ads.dag
    public final String toString() {
        return this.f26695a.toString();
    }
}
