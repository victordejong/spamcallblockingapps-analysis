package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjc.class */
public final class zzfjc implements zzfio {
    private final zzfiz zza;
    private final zzfix zzb;

    public zzfjc(zzfiz zzfizVar, zzfix zzfixVar) {
        this.zza = zzfizVar;
        this.zzb = zzfixVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfio
    public final String zza(zzfin zzfinVar) {
        zzfiz zzfizVar = this.zza;
        Map<String, String> zzj = zzfinVar.zzj();
        this.zzb.zza(zzj);
        return zzfizVar.zza(zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzfio
    public final void zzb(zzfin zzfinVar) {
    }
}
