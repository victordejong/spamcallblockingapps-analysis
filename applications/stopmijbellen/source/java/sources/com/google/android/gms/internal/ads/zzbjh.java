package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.VideoController;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjh.class */
public final class zzbjh extends zzbgp {
    public final /* synthetic */ zzbji zza;

    public zzbjh(zzbji zzbjiVar) {
        this.zza = zzbjiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgp, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        VideoController videoController;
        videoController = this.zza.zze;
        videoController.zzb(this.zza.zzi());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override // com.google.android.gms.internal.ads.zzbgp, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        VideoController videoController;
        videoController = this.zza.zze;
        videoController.zzb(this.zza.zzi());
        super.onAdLoaded();
    }
}
