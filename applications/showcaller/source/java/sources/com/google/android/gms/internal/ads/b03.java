package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b03.class */
public final class b03<V> extends a03<V> {

    /* renamed from: k */
    private final r03<V> f20236k;

    public b03(r03<V> r03Var) {
        Objects.requireNonNull(r03Var);
        this.f20236k = r03Var;
    }

    @Override // com.google.android.gms.internal.ads.fz2, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f20236k.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.fz2, com.google.android.gms.internal.ads.r03
    /* renamed from: d */
    public final void mo10015d(Runnable runnable, Executor executor) {
        this.f20236k.mo10015d(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.fz2, java.util.concurrent.Future
    public final V get() {
        return this.f20236k.get();
    }

    @Override // com.google.android.gms.internal.ads.fz2, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.f20236k.get(j, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.fz2, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f20236k.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.fz2, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f20236k.isDone();
    }

    @Override // com.google.android.gms.internal.ads.fz2
    public final String toString() {
        return this.f20236k.toString();
    }
}
