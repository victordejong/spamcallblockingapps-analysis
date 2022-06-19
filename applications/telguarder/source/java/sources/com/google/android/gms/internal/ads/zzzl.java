package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.VideoController;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzl.class */
public final class zzzl extends zzwu {
    private final /* synthetic */ zzzm zzckj;

    public zzzl(zzzm zzzmVar) {
        this.zzckj = zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwu, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        VideoController videoController;
        videoController = this.zzckj.zzckl;
        videoController.zza(this.zzckj.zzdw());
        super.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.zzwu, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        VideoController videoController;
        videoController = this.zzckj.zzckl;
        videoController.zza(this.zzckj.zzdw());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override // com.google.android.gms.internal.ads.zzwu, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        VideoController videoController;
        videoController = this.zzckj.zzckl;
        videoController.zza(this.zzckj.zzdw());
        super.onAdLoaded();
    }
}
