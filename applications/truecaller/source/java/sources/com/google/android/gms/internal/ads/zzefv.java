package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefv.class */
public final class zzefv implements zzfrz<zzcvh> {
    public final /* synthetic */ zzefw zza;

    public zzefv(zzefw zzefwVar) {
        this.zza = zzefwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        zzcwe zzcweVar;
        zzdbe zzdbeVar;
        zzcweVar = this.zza.zza;
        zzbcz zzh = zzcweVar.zzY().zzh(th);
        zzdbeVar = this.zza.zzd;
        zzdbeVar.zzbD(zzh);
        zzfbh.zza(zzh.zza, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzcvh zzcvhVar) {
        zzcvhVar.zzS();
    }
}
