package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyi.class */
public final class zzdyi implements zzfif {
    private final Map<zzfhy, zzdyh> zza;
    private final zzbay zzb;

    public zzdyi(zzbay zzbayVar, Map<zzfhy, zzdyh> map) {
        this.zza = map;
        this.zzb = zzbayVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzb(zzfhy zzfhyVar, String str, Throwable th) {
        if (this.zza.containsKey(zzfhyVar)) {
            this.zzb.zzc(this.zza.get(zzfhyVar).zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbN(zzfhy zzfhyVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbO(zzfhy zzfhyVar, String str) {
        if (this.zza.containsKey(zzfhyVar)) {
            this.zzb.zzc(this.zza.get(zzfhyVar).zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzc(zzfhy zzfhyVar, String str) {
        if (this.zza.containsKey(zzfhyVar)) {
            this.zzb.zzc(this.zza.get(zzfhyVar).zza);
        }
    }
}
