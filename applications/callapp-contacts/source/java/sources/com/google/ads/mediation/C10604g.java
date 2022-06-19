package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* renamed from: com.google.ads.mediation.g */
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/g.class */
final class C10604g extends AdMetadataListener {

    /* renamed from: a */
    private final /* synthetic */ AbstractAdViewAdapter f34369a;

    public C10604g(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f34369a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        InterstitialAd interstitialAd;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        InterstitialAd interstitialAd2;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener2;
        interstitialAd = this.f34369a.zzms;
        if (interstitialAd != null) {
            mediationRewardedVideoAdListener = this.f34369a.zzmt;
            if (mediationRewardedVideoAdListener == null) {
                return;
            }
            interstitialAd2 = this.f34369a.zzms;
            Bundle adMetadata = interstitialAd2.getAdMetadata();
            mediationRewardedVideoAdListener2 = this.f34369a.zzmt;
            mediationRewardedVideoAdListener2.zzb(adMetadata);
        }
    }
}
