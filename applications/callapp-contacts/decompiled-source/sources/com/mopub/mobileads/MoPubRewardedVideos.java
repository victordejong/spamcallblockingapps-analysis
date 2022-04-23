package com.mopub.mobileads;

import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.mobileads.MoPubRewardedAdManager;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import java.util.Set;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideos.class */
public class MoPubRewardedVideos {
    public static Set<MoPubReward> getAvailableRewards(String str) {
        return MoPubRewardedAds.getAvailableRewards(str);
    }

    public static boolean hasRewardedVideo(String str) {
        return MoPubRewardedAds.hasRewardedAd(str);
    }

    public static void loadRewardedVideo(String str, MoPubRewardedVideoManager.RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        MoPubRewardedAds.loadRewardedAd(str, requestParameters != null ? new MoPubRewardedAdManager.RequestParameters(requestParameters.mKeywords, requestParameters.mUserDataKeywords, requestParameters.mLocation, requestParameters.mCustomerId) : null, mediationSettingsArr);
    }

    public static void loadRewardedVideo(String str, MediationSettings... mediationSettingsArr) {
        MoPubRewardedAds.loadRewardedAd(str, mediationSettingsArr);
    }

    public static void selectReward(String str, MoPubReward moPubReward) {
        MoPubRewardedAds.selectReward(str, moPubReward);
    }

    public static void setRewardedVideoListener(final MoPubRewardedVideoListener moPubRewardedVideoListener) {
        if (moPubRewardedVideoListener == null) {
            MoPubRewardedAds.setRewardedAdListener(null);
        } else {
            MoPubRewardedAds.setRewardedAdListener(new MoPubRewardedAdListener() { // from class: com.mopub.mobileads.MoPubRewardedVideos.1
                @Override // com.mopub.mobileads.MoPubRewardedAdListener
                public final void onRewardedAdClicked(String str) {
                    MoPubRewardedVideoListener.this.onRewardedVideoClicked(str);
                }

                @Override // com.mopub.mobileads.MoPubRewardedAdListener
                public final void onRewardedAdClosed(String str) {
                    MoPubRewardedVideoListener.this.onRewardedVideoClosed(str);
                }

                @Override // com.mopub.mobileads.MoPubRewardedAdListener
                public final void onRewardedAdCompleted(Set<String> set, MoPubReward moPubReward) {
                    MoPubRewardedVideoListener.this.onRewardedVideoCompleted(set, moPubReward);
                }

                @Override // com.mopub.mobileads.MoPubRewardedAdListener
                public final void onRewardedAdLoadFailure(String str, MoPubErrorCode moPubErrorCode) {
                    MoPubRewardedVideoListener.this.onRewardedVideoLoadFailure(str, moPubErrorCode);
                }

                @Override // com.mopub.mobileads.MoPubRewardedAdListener
                public final void onRewardedAdLoadSuccess(String str) {
                    MoPubRewardedVideoListener.this.onRewardedVideoLoadSuccess(str);
                }

                @Override // com.mopub.mobileads.MoPubRewardedAdListener
                public final void onRewardedAdShowError(String str, MoPubErrorCode moPubErrorCode) {
                    MoPubRewardedVideoListener.this.onRewardedVideoPlaybackError(str, moPubErrorCode);
                }

                @Override // com.mopub.mobileads.MoPubRewardedAdListener
                public final void onRewardedAdStarted(String str) {
                    MoPubRewardedVideoListener.this.onRewardedVideoStarted(str);
                }
            });
        }
    }

    public static void showRewardedVideo(String str) {
        MoPubRewardedAds.showRewardedAd(str);
    }

    public static void showRewardedVideo(String str, String str2) {
        MoPubRewardedAds.showRewardedAd(str, str2);
    }
}
