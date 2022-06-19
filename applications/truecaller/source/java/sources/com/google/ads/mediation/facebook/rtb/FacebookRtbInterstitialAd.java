package com.google.ads.mediation.facebook.rtb;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AbstractC0929Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/facebook/rtb/FacebookRtbInterstitialAd.class */
public class FacebookRtbInterstitialAd implements MediationInterstitialAd, InterstitialAdExtendedListener {
    private MediationInterstitialAdConfiguration adConfiguration;
    private MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> callback;
    private InterstitialAd interstitialAd;
    private MediationInterstitialAdCallback mInterstitalAdCallback;
    private AtomicBoolean showAdCalled = new AtomicBoolean();
    private AtomicBoolean didInterstitialAdClose = new AtomicBoolean();

    public FacebookRtbInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationInterstitialAdConfiguration;
        this.callback = mediationAdLoadCallback;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC0929Ad abstractC0929Ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.mInterstitalAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC0929Ad abstractC0929Ad) {
        this.mInterstitalAdCallback = this.callback.onSuccess(this);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC0929Ad abstractC0929Ad, AdError adError) {
        String createSdkError = FacebookMediationAdapter.createSdkError(adError);
        String str = FacebookMediationAdapter.TAG;
        if (!this.showAdCalled.get()) {
            this.callback.onFailure(createSdkError);
            return;
        }
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.mInterstitalAdCallback;
        if (mediationInterstitialAdCallback == null) {
            return;
        }
        mediationInterstitialAdCallback.onAdOpened();
        this.mInterstitalAdCallback.onAdClosed();
    }

    @Override // com.facebook.ads.InterstitialAdExtendedListener
    public void onInterstitialActivityDestroyed() {
        MediationInterstitialAdCallback mediationInterstitialAdCallback;
        if (this.didInterstitialAdClose.getAndSet(true) || (mediationInterstitialAdCallback = this.mInterstitalAdCallback) == null) {
            return;
        }
        mediationInterstitialAdCallback.onAdClosed();
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(AbstractC0929Ad abstractC0929Ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback;
        if (this.didInterstitialAdClose.getAndSet(true) || (mediationInterstitialAdCallback = this.mInterstitalAdCallback) == null) {
            return;
        }
        mediationInterstitialAdCallback.onAdClosed();
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(AbstractC0929Ad abstractC0929Ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.mInterstitalAdCallback;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdOpened();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC0929Ad abstractC0929Ad) {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdCompleted() {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerFailed() {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerSucceeded() {
    }

    public void render() {
        String placementID = FacebookMediationAdapter.getPlacementID(this.adConfiguration.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            String createAdapterError = FacebookMediationAdapter.createAdapterError(101, "Failed to request ad, placementID is null or empty.");
            String str = FacebookMediationAdapter.TAG;
            this.callback.onFailure(createAdapterError);
            return;
        }
        FacebookMediationAdapter.setMixedAudience(this.adConfiguration);
        this.interstitialAd = new InterstitialAd(this.adConfiguration.getContext(), placementID);
        if (!TextUtils.isEmpty(this.adConfiguration.getWatermark())) {
            this.interstitialAd.setExtraHints(new ExtraHints.Builder().mediationData(this.adConfiguration.getWatermark()).build());
        }
        InterstitialAd interstitialAd = this.interstitialAd;
        interstitialAd.loadAd(interstitialAd.buildLoadAdConfig().withBid(this.adConfiguration.getBidResponse()).withAdListener(this).build());
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        this.showAdCalled.set(true);
        if (!this.interstitialAd.show()) {
            FacebookMediationAdapter.createAdapterError(110, "Failed to present interstitial ad.");
            String str = FacebookMediationAdapter.TAG;
            MediationInterstitialAdCallback mediationInterstitialAdCallback = this.mInterstitalAdCallback;
            if (mediationInterstitialAdCallback == null) {
                return;
            }
            mediationInterstitialAdCallback.onAdOpened();
            this.mInterstitalAdCallback.onAdClosed();
        }
    }
}
