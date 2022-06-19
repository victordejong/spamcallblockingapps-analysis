package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdse.class */
public final class zzdse implements zzgla<zzazj> {
    private final zzgln<zzfar> zza;

    public zzdse(zzgln<zzfar> zzglnVar) {
        this.zza = zzglnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzazj zzazjVar = ((zzdat) this.zza).zza().zzo.zza == 3 ? zzazj.REWARDED_INTERSTITIAL : zzazj.REWARD_BASED_VIDEO_AD;
        zzgli.zzb(zzazjVar);
        return zzazjVar;
    }
}
