package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfiv.class */
public final class zzfiv implements zzfio {
    private final zzfiz zza;
    private final zzfix zzb;
    private final zzfil zzc;

    public zzfiv(zzfil zzfilVar, zzfiz zzfizVar, zzfix zzfixVar, byte[] bArr) {
        this.zzc = zzfilVar;
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
        this.zzc.zzb(zza(zzfinVar));
    }
}
