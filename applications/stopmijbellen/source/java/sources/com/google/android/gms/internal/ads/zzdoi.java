package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoi.class */
final class zzdoi implements zzday<zzdbc> {
    private final Map<String, zzeht<zzdbc>> zza;
    private final Map<String, zzeht<zzdpx>> zzb;
    private final Map<String, zzekh<zzdpx>> zzc;
    private final zzgqe<zzday<zzcyw>> zzd;
    private final zzdqn zze;

    public zzdoi(Map<String, zzeht<zzdbc>> map, Map<String, zzeht<zzdpx>> map2, Map<String, zzekh<zzdpx>> map3, zzgqe<zzday<zzcyw>> zzgqeVar, zzdqn zzdqnVar) {
        this.zza = map;
        this.zzb = map2;
        this.zzc = map3;
        this.zzd = zzgqeVar;
        this.zze = zzdqnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    public final zzeht<zzdbc> zza(int i, String str) {
        zzeht<zzcyw> zza;
        zzehu zzehuVar;
        zzeht<zzdbc> zzehtVar = this.zza.get(str);
        if (zzehtVar != null) {
            return zzehtVar;
        }
        if (i == 1) {
            if (this.zze.zze() != null && (zza = this.zzd.zzb().zza(i, str)) != null) {
                return zzdbc.zza(zza);
            }
            return null;
        } else if (i != 4) {
            return null;
        } else {
            zzekh<zzdpx> zzekhVar = this.zzc.get(str);
            if (zzekhVar != null) {
                zzehuVar = new zzehu(zzekhVar, zzdbb.zza);
            } else {
                zzeht<zzdpx> zzehtVar2 = this.zzb.get(str);
                if (zzehtVar2 != null) {
                    return zzdbc.zza(zzehtVar2);
                }
                zzehuVar = null;
            }
            return zzehuVar;
        }
    }
}
