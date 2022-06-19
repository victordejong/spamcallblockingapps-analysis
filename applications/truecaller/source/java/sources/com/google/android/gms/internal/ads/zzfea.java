package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfea.class */
public final class zzfea {
    public final /* synthetic */ zzfek zza;
    private final Object zzb;
    private final List<zzfsm<?>> zzc;

    public /* synthetic */ zzfea(zzfek zzfekVar, Object obj, List list, zzfeb zzfebVar) {
        this.zza = zzfekVar;
        this.zzb = obj;
        this.zzc = list;
    }

    public final <O> zzfej<O> zza(Callable<O> callable) {
        zzfsn zzfsnVar;
        zzfsb zzo = zzfsd.zzo(this.zzc);
        zzfsm zza = zzo.zza(zzfdz.zza, zzchg.zzf);
        zzfek zzfekVar = this.zza;
        Object obj = this.zzb;
        List<zzfsm<?>> list = this.zzc;
        zzfsnVar = zzfekVar.zzb;
        return new zzfej<>(zzfekVar, obj, zza, list, zzo.zza(callable, zzfsnVar));
    }
}
