package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcor.class */
public final class zzcor implements zzgla<Set<zzdih<zzdhv>>> {
    private final zzgln<zzecc> zza;
    private final zzgln<Executor> zzb;

    public zzcor(zzgln<zzecc> zzglnVar, zzgln<Executor> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set set;
        zzecc zzb = this.zza.zzb();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbr)).booleanValue()) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
                set = Collections.singleton(new zzdih(zzb, zzfsnVar));
                zzgli.zzb(set);
                return set;
            }
        }
        set = Collections.emptySet();
        zzgli.zzb(set);
        return set;
    }
}
