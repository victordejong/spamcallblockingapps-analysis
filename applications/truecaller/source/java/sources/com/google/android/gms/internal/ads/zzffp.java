package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffp.class */
public final class zzffp implements zzffc {
    private final zzffm zza;
    private final zzffk zzb;

    public zzffp(zzffm zzffmVar, zzffk zzffkVar) {
        this.zza = zzffmVar;
        this.zzb = zzffkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzffc
    public final void zza(zzffb zzffbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzffc
    public final String zzb(zzffb zzffbVar) {
        zzffm zzffmVar = this.zza;
        Map<String, String> zzj = zzffbVar.zzj();
        this.zzb.zza(zzj);
        return zzffmVar.zza(zzj);
    }
}
