package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfei.class */
public final class zzfei implements zzfrz {
    public final /* synthetic */ zzfdy zza;
    public final /* synthetic */ zzfej zzb;

    public zzfei(zzfej zzfejVar, zzfdy zzfdyVar) {
        this.zzb = zzfejVar;
        this.zza = zzfdyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzfel zzfelVar;
        zzfelVar = this.zzb.zza.zzd;
        zzfelVar.zzc(this.zza, th);
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zzb(Object obj) {
        zzfel zzfelVar;
        zzfelVar = this.zzb.zza.zzd;
        zzfelVar.zzd(this.zza);
    }
}
