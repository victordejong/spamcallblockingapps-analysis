package com.google.ads.mediation.facebook.rtb;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.ads.AbstractC0929Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.facebook.ads.ExtraHints;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/facebook/rtb/FacebookRtbBannerAd.class */
public class FacebookRtbBannerAd implements MediationBannerAd, AdListener {
    private MediationBannerAdConfiguration adConfiguration;
    private AdView adView;
    private MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> callback;
    private MediationBannerAdCallback mBannerAdCallback;
    private FrameLayout mWrappedAdView;

    public FacebookRtbBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationBannerAdConfiguration;
        this.callback = mediationAdLoadCallback;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.mWrappedAdView;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC0929Ad abstractC0929Ad) {
        MediationBannerAdCallback mediationBannerAdCallback = this.mBannerAdCallback;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdOpened();
            this.mBannerAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC0929Ad abstractC0929Ad) {
        this.mBannerAdCallback = this.callback.onSuccess(this);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC0929Ad abstractC0929Ad, AdError adError) {
        String createSdkError = FacebookMediationAdapter.createSdkError(adError);
        String str = FacebookMediationAdapter.TAG;
        this.callback.onFailure(createSdkError);
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC0929Ad abstractC0929Ad) {
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
        try {
            this.adView = new AdView(this.adConfiguration.getContext(), placementID, this.adConfiguration.getBidResponse());
            if (!TextUtils.isEmpty(this.adConfiguration.getWatermark())) {
                this.adView.setExtraHints(new ExtraHints.Builder().mediationData(this.adConfiguration.getWatermark()).build());
            }
            Context context = this.adConfiguration.getContext();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.adConfiguration.getAdSize().getWidthInPixels(context), -2);
            this.mWrappedAdView = new FrameLayout(context);
            this.adView.setLayoutParams(layoutParams);
            this.mWrappedAdView.addView(this.adView);
            AdView adView = this.adView;
            adView.loadAd(adView.buildLoadAdConfig().withAdListener(this).withBid(this.adConfiguration.getBidResponse()).build());
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            String createAdapterError2 = FacebookMediationAdapter.createAdapterError(111, valueOf.length() != 0 ? "Failed to create banner ad: ".concat(valueOf) : new String("Failed to create banner ad: "));
            String str2 = FacebookMediationAdapter.TAG;
            this.callback.onFailure(createAdapterError2);
        }
    }
}
