package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtk.class */
public final class zzbtk implements zzchp<zzbtt> {
    public final /* synthetic */ zzbtm zza;

    public zzbtk(zzbtm zzbtmVar) {
        this.zza = zzbtmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzchp
    public final /* bridge */ /* synthetic */ void zza(zzbtt zzbttVar) {
        zzbtr zzbtrVar;
        zze.zza("Releasing engine reference.");
        zzbtrVar = this.zza.zzb;
        zzbtrVar.zzb();
    }
}
