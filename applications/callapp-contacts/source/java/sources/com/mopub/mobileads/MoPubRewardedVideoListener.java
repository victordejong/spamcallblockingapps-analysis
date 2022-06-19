package com.mopub.mobileads;

import com.mopub.common.MoPubReward;
import java.util.Set;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoListener.class */
public interface MoPubRewardedVideoListener {
    @Deprecated
    void onRewardedVideoClicked(String str);

    @Deprecated
    void onRewardedVideoClosed(String str);

    @Deprecated
    void onRewardedVideoCompleted(Set<String> set, MoPubReward moPubReward);

    @Deprecated
    void onRewardedVideoLoadFailure(String str, MoPubErrorCode moPubErrorCode);

    @Deprecated
    void onRewardedVideoLoadSuccess(String str);

    @Deprecated
    void onRewardedVideoPlaybackError(String str, MoPubErrorCode moPubErrorCode);

    @Deprecated
    void onRewardedVideoStarted(String str);
}
