package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvv.class */
public final class zzdvv implements zzgpr<zzbbg> {
    private final zzgqe<zzfef> zza;

    public zzdvv(zzgqe<zzfef> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbbg zzbbgVar = ((zzdei) this.zza).zza().zzo.zza == 3 ? zzbbg.REWARDED_INTERSTITIAL : zzbbg.REWARD_BASED_VIDEO_AD;
        zzgpz.zzb(zzbbgVar);
        return zzbbgVar;
    }
}
