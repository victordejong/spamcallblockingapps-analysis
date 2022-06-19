package com.applovin.mediation;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinInterstitialAdListener.class */
class AppLovinInterstitialAdListener implements AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {
    private final ApplovinAdapter mAdapter;
    private final MediationInterstitialListener mMediationInterstitialListener;

    public AppLovinInterstitialAdListener(ApplovinAdapter applovinAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.mAdapter = applovinAdapter;
        this.mMediationInterstitialListener = mediationInterstitialListener;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Interstitial clicked.");
        this.mMediationInterstitialListener.onAdClicked(this.mAdapter);
        this.mMediationInterstitialListener.onAdLeftApplication(this.mAdapter);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Interstitial displayed.");
        this.mMediationInterstitialListener.onAdOpened(this.mAdapter);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Interstitial dismissed.");
        this.mAdapter.unregister();
        this.mMediationInterstitialListener.onAdClosed(this.mAdapter);
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Interstitial video playback began.");
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        ApplovinAdapter.log(3, "Interstitial video playback ended at playback percent: " + d + "%.");
    }
}
