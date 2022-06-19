package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjx.class */
public final class zzcjx implements zzdrp {
    private zztu zzgkx;
    private Map<zzdrk, zzcjz> zzgld;

    public zzcjx(zztu zztuVar, Map<zzdrk, zzcjz> map) {
        this.zzgld = map;
        this.zzgkx = zztuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str, Throwable th) {
        if (this.zzgld.containsKey(zzdrkVar)) {
            this.zzgkx.zza(this.zzgld.get(zzdrkVar).zzgli);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrkVar, String str) {
        if (this.zzgld.containsKey(zzdrkVar)) {
            this.zzgkx.zza(this.zzgld.get(zzdrkVar).zzglg);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrkVar, String str) {
        if (this.zzgld.containsKey(zzdrkVar)) {
            this.zzgkx.zza(this.zzgld.get(zzdrkVar).zzglh);
        }
    }
}
