package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcao.class */
final class zzcao implements zzbny<zzbnz> {
    private final zzcco zzfup;
    private final Map<String, zzcrj<zzbnz>> zzfwj;
    private final zzeqo<zzbny<zzblv>> zzgbu;
    private final Map<String, zzcrj<zzcbu>> zzgbv;
    private final Map<String, zzcty<zzcbu>> zzgbw;

    public zzcao(Map<String, zzcrj<zzbnz>> map, Map<String, zzcrj<zzcbu>> map2, Map<String, zzcty<zzcbu>> map3, zzeqo<zzbny<zzblv>> zzeqoVar, zzcco zzccoVar) {
        this.zzfwj = map;
        this.zzgbv = map2;
        this.zzgbw = map3;
        this.zzgbu = zzeqoVar;
        this.zzfup = zzccoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbny
    public final zzcrj<zzbnz> zze(int i, String str) {
        zzcrj<zzblv> zze;
        zzcrj<zzbnz> zzcrjVar = this.zzfwj.get(str);
        if (zzcrjVar != null) {
            return zzcrjVar;
        }
        if (i == 1) {
            if (this.zzfup.zzaom() != null && (zze = this.zzgbu.get().zze(i, str)) != null) {
                return zzbnz.zza(zze);
            }
            return null;
        } else if (i != 4) {
            return null;
        } else {
            zzcty<zzcbu> zzctyVar = this.zzgbw.get(str);
            if (zzctyVar != null) {
                return zzbnz.zza((zzcty<? extends zzbnt>) zzctyVar);
            }
            zzcrj<zzcbu> zzcrjVar2 = this.zzgbv.get(str);
            if (zzcrjVar2 == null) {
                return null;
            }
            return zzbnz.zza(zzcrjVar2);
        }
    }
}
