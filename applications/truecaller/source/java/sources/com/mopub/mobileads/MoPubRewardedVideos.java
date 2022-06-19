package com.mopub.mobileads;

import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.mobileads.MoPubRewardedAdManager;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import java.util.Set;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideos.class */
public class MoPubRewardedVideos {
    @ReflectionTarget
    public static Set<MoPubReward> getAvailableRewards(String str) {
        return MoPubRewardedAds.getAvailableRewards(str);
    }

    @ReflectionTarget
    public static boolean hasRewardedVideo(String str) {
        return MoPubRewardedAds.hasRewardedAd(str);
    }

    @ReflectionTarget
    public static void loadRewardedVideo(String str, MoPubRewardedVideoManager.RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        MoPubRewardedAds.loadRewardedAd(str, requestParameters != null ? new MoPubRewardedAdManager.RequestParameters(requestParameters.mKeywords, requestParameters.mUserDataKeywords, requestParameters.mLocation, requestParameters.mCustomerId) : null, mediationSettingsArr);
    }

    @ReflectionTarget
    public static void loadRewardedVideo(String str, MediationSettings... mediationSettingsArr) {
        MoPubRewardedAds.loadRewardedAd(str, mediationSettingsArr);
    }

    @ReflectionTarget
    public static void selectReward(String str, MoPubReward moPubReward) {
        MoPubRewardedAds.selectReward(str, moPubReward);
    }

    @ReflectionTarget
    public static void setRewardedVideoListener(MoPubRewardedVideoListener moPubRewardedVideoListener) {
        if (moPubRewardedVideoListener == null) {
            MoPubRewardedAds.setRewardedAdListener(null);
        } else {
            MoPubRewardedAds.setRewardedAdListener(new a(moPubRewardedVideoListener));
        }
    }

    @ReflectionTarget
    public static void showRewardedVideo(String str) {
        MoPubRewardedAds.showRewardedAd(str);
    }

    @ReflectionTarget
    public static void showRewardedVideo(String str, String str2) {
        MoPubRewardedAds.showRewardedAd(str, str2);
    }
}
