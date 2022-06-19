package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzp.class */
public final class zzdzp<V> {
    private final boolean zzhzs;
    private final zzdxd<zzdzw<? extends V>> zziao;

    private zzdzp(boolean z, zzdxd<zzdzw<? extends V>> zzdxdVar) {
        this.zzhzs = z;
        this.zziao = zzdxdVar;
    }

    public /* synthetic */ zzdzp(boolean z, zzdxd zzdxdVar, zzdzn zzdznVar) {
        this(z, zzdxdVar);
    }

    public final <C> zzdzw<C> zzb(Callable<C> callable, Executor executor) {
        return new zzdyy(this.zziao, this.zzhzs, executor, callable);
    }
}
