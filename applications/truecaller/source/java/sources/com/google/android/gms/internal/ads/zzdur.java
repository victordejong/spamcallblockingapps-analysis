package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdur.class */
public final class zzdur implements zzfet {
    private final Map<zzfem, zzduq> zza;
    private final zzazb zzb;

    public zzdur(zzazb zzazbVar, Map<zzfem, zzduq> map) {
        this.zza = map;
        this.zzb = zzazbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzbE(zzfem zzfemVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzbF(zzfem zzfemVar, String str) {
        if (this.zza.containsKey(zzfemVar)) {
            this.zzb.zzc(this.zza.get(zzfemVar).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzc(zzfem zzfemVar, String str, Throwable th) {
        if (this.zza.containsKey(zzfemVar)) {
            this.zzb.zzc(this.zza.get(zzfemVar).zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzd(zzfem zzfemVar, String str) {
        if (this.zza.containsKey(zzfemVar)) {
            this.zzb.zzc(this.zza.get(zzfemVar).zzb);
        }
    }
}
