package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/zzb.class */
public final class zzb extends AdMetadataListener {
    public final /* synthetic */ AbstractAdViewAdapter zzhh;

    public zzb(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzhh = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        InterstitialAd interstitialAd;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        InterstitialAd interstitialAd2;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener2;
        interstitialAd = this.zzhh.zzhe;
        if (interstitialAd != null) {
            mediationRewardedVideoAdListener = this.zzhh.zzhf;
            if (mediationRewardedVideoAdListener != null) {
                interstitialAd2 = this.zzhh.zzhe;
                Bundle adMetadata = interstitialAd2.getAdMetadata();
                mediationRewardedVideoAdListener2 = this.zzhh.zzhf;
                mediationRewardedVideoAdListener2.zzc(adMetadata);
            }
        }
    }
}
