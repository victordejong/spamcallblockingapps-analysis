package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeed.class */
public final class zzeed implements zzeef {
    private final Map<String, zzgqe<zzeef>> zza;
    private final zzfxb zzb;
    private final zzdhk zzc;

    public zzeed(Map<String, zzgqe<zzeef>> map, zzfxb zzfxbVar, zzdhk zzdhkVar) {
        this.zza = map;
        this.zzb = zzfxbVar;
        this.zzc = zzdhkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeef
    public final zzfxa<zzfdz> zzb(final zzcdq zzcdqVar) {
        this.zzc.zzd(zzcdqVar);
        zzfxa<zzfdz> zzh = zzfwq.zzh(new zzecd(3));
        String[] split = ((String) zzbgq.zzc().zzb(zzblj.zzfY)).split(",");
        int length = split.length;
        int i = 0;
        while (i < length) {
            final zzgqe<zzeef> zzgqeVar = this.zza.get(split[i].trim());
            zzfxa<zzfdz> zzfxaVar = zzh;
            if (zzgqeVar != null) {
                zzfxaVar = zzfwq.zzg(zzh, zzecd.class, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeeb
                    @Override // com.google.android.gms.internal.ads.zzfvx
                    public final zzfxa zza(Object obj) {
                        zzgqe zzgqeVar2 = zzgqe.this;
                        zzecd zzecdVar = (zzecd) obj;
                        return ((zzeef) zzgqeVar2.zzb()).zzb(zzcdqVar);
                    }
                }, this.zzb);
            }
            i++;
            zzh = zzfxaVar;
        }
        zzfwq.zzr(zzh, new zzeec(this), zzcjm.zzf);
        return zzh;
    }
}
