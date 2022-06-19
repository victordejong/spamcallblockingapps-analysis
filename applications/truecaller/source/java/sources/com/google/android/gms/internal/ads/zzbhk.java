package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.VideoController;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhk.class */
public final class zzbhk extends zzbes {
    public final /* synthetic */ zzbhl zza;

    public zzbhk(zzbhl zzbhlVar) {
        this.zza = zzbhlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbes, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        VideoController videoController;
        videoController = this.zza.zze;
        videoController.zza(this.zza.zzx());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override // com.google.android.gms.internal.ads.zzbes, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        VideoController videoController;
        videoController = this.zza.zze;
        videoController.zza(this.zza.zzx());
        super.onAdLoaded();
    }
}
