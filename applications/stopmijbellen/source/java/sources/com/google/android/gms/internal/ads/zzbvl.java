package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvl.class */
public final class zzbvl implements zzcjv<zzbvu> {
    public final /* synthetic */ zzbvn zza;

    public zzbvl(zzbvn zzbvnVar) {
        this.zza = zzbvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final /* bridge */ /* synthetic */ void zza(zzbvu zzbvuVar) {
        zzbvs zzbvsVar;
        zze.zza("Releasing engine reference.");
        zzbvsVar = this.zza.zzb;
        zzbvsVar.zzd();
    }
}
