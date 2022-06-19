package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduo.class */
public final class zzduo implements zzgla<Set<zzdih<zzfet>>> {
    private final zzgln<String> zza;
    private final zzgln<Context> zzb;
    private final zzgln<Executor> zzc;
    private final zzgln<Map<zzfem, zzduq>> zzd;

    public zzduo(zzgln<String> zzglnVar, zzgln<Context> zzglnVar2, zzgln<Executor> zzglnVar3, zzgln<Map<zzfem, zzduq>> zzglnVar4) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
        this.zzd = zzglnVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set set;
        String zza = ((zzeub) this.zza).zza();
        Context zza2 = ((zzcoo) this.zzb).zza();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        Map zzb = ((zzgle) this.zzd).zzb();
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdo)).booleanValue()) {
            zzazb zzazbVar = new zzazb(new zzazf(zza2));
            zzazbVar.zzb(new zzaza(zza) { // from class: com.google.android.gms.internal.ads.zzdup
                private final String zza;

                {
                    this.zza = zza;
                }

                @Override // com.google.android.gms.internal.ads.zzaza
                public final void zza(zzbao zzbaoVar) {
                    zzbaoVar.zzb(this.zza);
                }
            });
            set = Collections.singleton(new zzdih(new zzdur(zzazbVar, zzb), zzfsnVar));
        } else {
            set = Collections.emptySet();
        }
        zzgli.zzb(set);
        return set;
    }
}
