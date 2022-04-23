package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/g.class */
final class g extends AdMetadataListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ AbstractAdViewAdapter f20291a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f20291a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        InterstitialAd interstitialAd;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        InterstitialAd interstitialAd2;
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener2;
        interstitialAd = this.f20291a.zzms;
        if (interstitialAd != null) {
            mediationRewardedVideoAdListener = this.f20291a.zzmt;
            if (mediationRewardedVideoAdListener != null) {
                interstitialAd2 = this.f20291a.zzms;
                Bundle adMetadata = interstitialAd2.getAdMetadata();
                mediationRewardedVideoAdListener2 = this.f20291a.zzmt;
                mediationRewardedVideoAdListener2.zzb(adMetadata);
            }
        }
    }
}
