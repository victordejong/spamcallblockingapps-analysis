package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfhm.class */
public final class zzfhm {
    public final /* synthetic */ zzfhw zza;
    private final Object zzb;
    private final List<zzfxa<?>> zzc;

    public /* synthetic */ zzfhm(zzfhw zzfhwVar, Object obj, List list, zzfhl zzfhlVar) {
        this.zza = zzfhwVar;
        this.zzb = obj;
        this.zzc = list;
    }

    public final <O> zzfhv<O> zza(Callable<O> callable) {
        zzfxb zzfxbVar;
        zzfwp zzc = zzfwq.zzc(this.zzc);
        zzfxa zza = zzc.zza(zzfhk.zza, zzcjm.zzf);
        zzfhw zzfhwVar = this.zza;
        Object obj = this.zzb;
        List<zzfxa<?>> list = this.zzc;
        zzfxbVar = zzfhwVar.zzb;
        return new zzfhv<>(zzfhwVar, obj, zza, list, zzc.zza(callable, zzfxbVar));
    }
}
