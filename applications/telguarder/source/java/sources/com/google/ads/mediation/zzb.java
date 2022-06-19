package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/zzb.class */
final class zzb extends AdMetadataListener {
    private final /* synthetic */ AbstractAdViewAdapter zzmi;

    public zzb(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzmi = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        InterstitialAd interstitialAd;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        InterstitialAd interstitialAd2;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener2;
        interstitialAd = this.zzmi.zzmn;
        if (interstitialAd != null) {
            mediationRewardedVideoAdListener = this.zzmi.zzmo;
            if (mediationRewardedVideoAdListener == null) {
                return;
            }
            interstitialAd2 = this.zzmi.zzmn;
            Bundle adMetadata = interstitialAd2.getAdMetadata();
            mediationRewardedVideoAdListener2 = this.zzmi.zzmo;
            mediationRewardedVideoAdListener2.zzb(adMetadata);
        }
    }
}
