package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyp.class */
public abstract class zzdyp<V> extends zzdym<V> implements zzdzc<V> {
    @Override // com.google.android.gms.internal.ads.zzdzc
    /* renamed from: a */
    public void mo12976a(Runnable runnable, Executor executor) {
        mo12997b().mo12976a(runnable, executor);
    }

    /* renamed from: d */
    public abstract zzdzc<? extends V> mo12997b();
}
