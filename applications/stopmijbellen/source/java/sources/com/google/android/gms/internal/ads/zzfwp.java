package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwp.class */
public final class zzfwp<V> {
    private final boolean zza;
    private final zzfss<zzfxa<? extends V>> zzb;

    public /* synthetic */ zzfwp(boolean z, zzfss zzfssVar, zzfwo zzfwoVar) {
        this.zza = z;
        this.zzb = zzfssVar;
    }

    public final <C> zzfxa<C> zza(Callable<C> callable, Executor executor) {
        return new zzfwd(this.zzb, this.zza, executor, callable);
    }
}
