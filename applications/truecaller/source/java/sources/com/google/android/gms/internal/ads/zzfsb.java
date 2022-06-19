package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsb.class */
public final class zzfsb<V> {
    private final boolean zza;
    private final zzfoj<zzfsm<? extends V>> zzb;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzfsb(boolean z, boolean z2, zzfoj<zzfsm<? extends V>> zzfojVar) {
        this.zza = z;
        this.zzb = z2;
    }

    public final <C> zzfsm<C> zza(Callable<C> callable, Executor executor) {
        return new zzfrq(this.zzb, this.zza, executor, callable);
    }
}
