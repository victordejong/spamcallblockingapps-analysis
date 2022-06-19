package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgj.class */
public final class zzbgj implements zzeqb<Set<zzbya<zzbxl>>> {
    private final zzeqo<zzcpj> zzewe;
    private final zzeqo<Executor> zzewf;

    public zzbgj(zzeqo<zzcpj> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzewe = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Set set;
        zzcpj zzcpjVar = this.zzewe.get();
        Executor executor = this.zzewf.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcro)).booleanValue()) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
                set = Collections.singleton(new zzbya(zzcpjVar, executor));
                return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
            }
        }
        set = Collections.emptySet();
        return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
    }
}
