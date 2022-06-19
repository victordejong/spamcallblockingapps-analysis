package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdku.class */
public final class zzdku implements zzcxj<zzcxn> {
    private final Map<String, zzeec<zzcxn>> zza;
    private final Map<String, zzeec<zzdmh>> zzb;
    private final Map<String, zzegq<zzdmh>> zzc;
    private final zzgln<zzcxj<zzcvh>> zzd;
    private final zzdmx zze;

    public zzdku(Map<String, zzeec<zzcxn>> map, Map<String, zzeec<zzdmh>> map2, Map<String, zzegq<zzdmh>> map3, zzgln<zzcxj<zzcvh>> zzglnVar, zzdmx zzdmxVar) {
        this.zza = map;
        this.zzb = map2;
        this.zzc = map3;
        this.zzd = zzglnVar;
        this.zze = zzdmxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxj
    public final zzeec<zzcxn> zza(int i, String str) {
        zzeec<zzcvh> zza;
        zzeec<zzcxn> zzeecVar;
        zzeec<zzcxn> zzeecVar2 = this.zza.get(str);
        if (zzeecVar2 != null) {
            return zzeecVar2;
        }
        if (i == 1) {
            if (this.zze.zzd() != null && (zza = this.zzd.zzb().zza(i, str)) != null) {
                return zzcxn.zzb(zza);
            }
            return null;
        } else if (i != 4) {
            return null;
        } else {
            zzegq<zzdmh> zzegqVar = this.zzc.get(str);
            if (zzegqVar != null) {
                zzeecVar = zzcxn.zza(zzegqVar);
            } else {
                zzeec<zzdmh> zzeecVar3 = this.zzb.get(str);
                if (zzeecVar3 != null) {
                    return zzcxn.zzb(zzeecVar3);
                }
                zzeecVar = null;
            }
            return zzeecVar;
        }
    }
}
