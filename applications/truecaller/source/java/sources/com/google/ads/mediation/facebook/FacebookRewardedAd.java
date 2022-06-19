package com.google.ads.mediation.facebook;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AbstractC0929Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.google.ads.mediation.facebook.FacebookInitializer;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/facebook/FacebookRewardedAd.class */
public class FacebookRewardedAd implements MediationRewardedAd, RewardedVideoAdExtendedListener {
    private MediationRewardedAdConfiguration adConfiguration;
    private MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mMediationAdLoadCallback;
    private MediationRewardedAdCallback mRewardedAdCallback;
    private RewardedVideoAd rewardedAd;
    private AtomicBoolean showAdCalled = new AtomicBoolean();
    private boolean isRtbAd = false;
    private AtomicBoolean didRewardedAdClose = new AtomicBoolean();

    public FacebookRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        this.adConfiguration = mediationRewardedAdConfiguration;
        this.mMediationAdLoadCallback = mediationAdLoadCallback;
    }

    public void createAndLoadRewardedVideo(Context context, String str) {
        RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(context, str);
        this.rewardedAd = rewardedVideoAd;
        rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(this).withAdExperience(getAdExperienceType()).build());
    }

    public AdExperienceType getAdExperienceType() {
        return AdExperienceType.AD_EXPERIENCE_TYPE_REWARDED;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC0929Ad abstractC0929Ad) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback == null || this.isRtbAd) {
            return;
        }
        mediationRewardedAdCallback.reportAdClicked();
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC0929Ad abstractC0929Ad) {
        MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.mMediationAdLoadCallback;
        if (mediationAdLoadCallback != null) {
            this.mRewardedAdCallback = mediationAdLoadCallback.onSuccess(this);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC0929Ad abstractC0929Ad, AdError adError) {
        String createSdkError = FacebookMediationAdapter.createSdkError(adError);
        if (this.showAdCalled.get()) {
            String str = FacebookMediationAdapter.TAG;
            String valueOf = String.valueOf(createSdkError);
            if (valueOf.length() != 0) {
                "Failed to present rewarded ad: ".concat(valueOf);
            } else {
                new String("Failed to present rewarded ad: ");
            }
            MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
            if (mediationRewardedAdCallback != null) {
                mediationRewardedAdCallback.onAdFailedToShow(createSdkError);
            }
        } else {
            String str2 = FacebookMediationAdapter.TAG;
            String valueOf2 = String.valueOf(createSdkError);
            if (valueOf2.length() != 0) {
                "Failed to load rewarded ad: ".concat(valueOf2);
            } else {
                new String("Failed to load rewarded ad: ");
            }
            MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.mMediationAdLoadCallback;
            if (mediationAdLoadCallback != null) {
                mediationAdLoadCallback.onFailure(createSdkError);
            }
        }
        this.rewardedAd.destroy();
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC0929Ad abstractC0929Ad) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback == null || this.isRtbAd) {
            return;
        }
        mediationRewardedAdCallback.reportAdImpression();
    }

    @Override // com.facebook.ads.RewardedVideoAdExtendedListener
    public void onRewardedVideoActivityDestroyed() {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        if (!this.didRewardedAdClose.getAndSet(true) && (mediationRewardedAdCallback = this.mRewardedAdCallback) != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
        RewardedVideoAd rewardedVideoAd = this.rewardedAd;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
        }
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoClosed() {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        if (!this.didRewardedAdClose.getAndSet(true) && (mediationRewardedAdCallback = this.mRewardedAdCallback) != null) {
            mediationRewardedAdCallback.onAdClosed();
        }
        RewardedVideoAd rewardedVideoAd = this.rewardedAd;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
        }
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoCompleted() {
        this.mRewardedAdCallback.onVideoComplete();
        this.mRewardedAdCallback.onUserEarnedReward(new FacebookReward());
    }

    public void render() {
        final Context context = this.adConfiguration.getContext();
        final String placementID = FacebookMediationAdapter.getPlacementID(this.adConfiguration.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            String createAdapterError = FacebookMediationAdapter.createAdapterError(101, "Failed to request ad, placementID is null or empty.");
            String str = FacebookMediationAdapter.TAG;
            this.mMediationAdLoadCallback.onFailure(createAdapterError);
            return;
        }
        String bidResponse = this.adConfiguration.getBidResponse();
        if (!TextUtils.isEmpty(bidResponse)) {
            this.isRtbAd = true;
        }
        FacebookMediationAdapter.setMixedAudience(this.adConfiguration);
        if (!this.isRtbAd) {
            FacebookInitializer.getInstance().initialize(context, placementID, new FacebookInitializer.Listener() { // from class: com.google.ads.mediation.facebook.FacebookRewardedAd.1
                @Override // com.google.ads.mediation.facebook.FacebookInitializer.Listener
                public void onInitializeError(String str2) {
                    String valueOf = String.valueOf(str2);
                    String createAdapterError2 = FacebookMediationAdapter.createAdapterError(104, valueOf.length() != 0 ? "Failed to load ad from Facebook: ".concat(valueOf) : new String("Failed to load ad from Facebook: "));
                    String str3 = FacebookMediationAdapter.TAG;
                    if (FacebookRewardedAd.this.mMediationAdLoadCallback != null) {
                        FacebookRewardedAd.this.mMediationAdLoadCallback.onFailure(createAdapterError2);
                    }
                }

                @Override // com.google.ads.mediation.facebook.FacebookInitializer.Listener
                public void onInitializeSuccess() {
                    FacebookRewardedAd.this.createAndLoadRewardedVideo(context, placementID);
                }
            });
            return;
        }
        this.rewardedAd = new RewardedVideoAd(context, placementID);
        if (!TextUtils.isEmpty(this.adConfiguration.getWatermark())) {
            this.rewardedAd.setExtraHints(new ExtraHints.Builder().mediationData(this.adConfiguration.getWatermark()).build());
        }
        RewardedVideoAd rewardedVideoAd = this.rewardedAd;
        rewardedVideoAd.loadAd(rewardedVideoAd.buildLoadAdConfig().withAdListener(this).withBid(bidResponse).withAdExperience(getAdExperienceType()).build());
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        this.showAdCalled.set(true);
        if (this.rewardedAd.show()) {
            MediationRewardedAdCallback mediationRewardedAdCallback = this.mRewardedAdCallback;
            if (mediationRewardedAdCallback == null) {
                return;
            }
            mediationRewardedAdCallback.onVideoStart();
            this.mRewardedAdCallback.onAdOpened();
            return;
        }
        String createAdapterError = FacebookMediationAdapter.createAdapterError(110, "Failed to present rewarded ad.");
        String str = FacebookMediationAdapter.TAG;
        MediationRewardedAdCallback mediationRewardedAdCallback2 = this.mRewardedAdCallback;
        if (mediationRewardedAdCallback2 != null) {
            mediationRewardedAdCallback2.onAdFailedToShow(createAdapterError);
        }
        this.rewardedAd.destroy();
    }
}
