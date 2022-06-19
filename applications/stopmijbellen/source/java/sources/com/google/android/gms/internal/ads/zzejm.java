package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejm.class */
public final class zzejm implements zzfwm<zzcyw> {
    public final /* synthetic */ zzejn zza;

    public zzejm(zzejn zzejnVar) {
        this.zza = zzejnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzczt zzcztVar;
        zzdet zzdetVar;
        zzcztVar = this.zza.zza;
        zzbew zza = zzcztVar.zzd().zza(th);
        zzdetVar = this.zza.zzd;
        zzdetVar.zza(zza);
        zzfeu.zzb(zza.zza, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* synthetic */ void zzb(zzcyw zzcywVar) {
        zzcywVar.zzU();
    }
}
