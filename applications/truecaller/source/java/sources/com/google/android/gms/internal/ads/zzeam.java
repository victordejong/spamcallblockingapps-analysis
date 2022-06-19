package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeam.class */
public final class zzeam implements zzeao {
    private final Map<String, zzgln<zzeao>> zza;
    private final zzfsn zzb;
    private final zzddv zzc;

    public zzeam(Map<String, zzgln<zzeao>> map, zzfsn zzfsnVar, zzddv zzddvVar) {
        this.zza = map;
        this.zzb = zzfsnVar;
        this.zzc = zzddvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeao
    public final zzfsm<zzfal> zzc(zzcbj zzcbjVar) {
        this.zzc.zzbG(zzcbjVar);
        zzfsm<zzfal> zzc = zzfsd.zzc(new zzdym(3));
        String[] split = ((String) zzbet.zzc().zzc(zzbjl.zzfR)).split(",");
        int length = split.length;
        int i = 0;
        while (i < length) {
            zzgln<zzeao> zzglnVar = this.zza.get(split[i].trim());
            zzfsm<zzfal> zzfsmVar = zzc;
            if (zzglnVar != null) {
                zzfsmVar = zzfsd.zzg(zzc, zzdym.class, new zzfrk(zzglnVar, zzcbjVar) { // from class: com.google.android.gms.internal.ads.zzeak
                    private final zzgln zza;
                    private final zzcbj zzb;

                    {
                        this.zza = zzglnVar;
                        this.zzb = zzcbjVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfrk
                    public final zzfsm zza(Object obj) {
                        zzgln zzglnVar2 = this.zza;
                        zzdym zzdymVar = (zzdym) obj;
                        return ((zzeao) zzglnVar2.zzb()).zzc(this.zzb);
                    }
                }, this.zzb);
            }
            i++;
            zzc = zzfsmVar;
        }
        zzfsd.zzp(zzc, new zzeal(this), zzchg.zzf);
        return zzc;
    }
}
