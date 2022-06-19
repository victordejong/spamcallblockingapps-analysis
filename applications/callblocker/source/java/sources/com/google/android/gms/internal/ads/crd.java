package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crd.class */
public final class crd<V> extends crb<V> {

    /* renamed from: a */
    private final crt<V> f13604a;

    public crd(crt<V> crtVar) {
        this.f13604a = (crt) cor.m10936a(crtVar);
    }

    @Override // com.google.android.gms.internal.ads.cqf, com.google.android.gms.internal.ads.crt
    /* renamed from: a */
    public final void mo6734a(Runnable runnable, Executor executor) {
        this.f13604a.mo6734a(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.cqf, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f13604a.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.cqf, java.util.concurrent.Future
    public final V get() {
        return this.f13604a.get();
    }

    @Override // com.google.android.gms.internal.ads.cqf, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.f13604a.get(j, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.cqf, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f13604a.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.cqf, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f13604a.isDone();
    }

    @Override // com.google.android.gms.internal.ads.cqf
    public final String toString() {
        return this.f13604a.toString();
    }
}
