package com.mopub.mobileads;

import com.mopub.common.MoPubReward;
import java.util.Set;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u0007\u001a\u00020\u00032\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0012"}, m4298d2 = {"Lcom/mopub/mobileads/MoPubRewardedAdListener;", "", "onRewardedAdClicked", "", "adUnitId", "", "onRewardedAdClosed", "onRewardedAdCompleted", "adUnitIds", "", "reward", "Lcom/mopub/common/MoPubReward;", "onRewardedAdLoadFailure", "errorCode", "Lcom/mopub/mobileads/MoPubErrorCode;", "onRewardedAdLoadSuccess", "onRewardedAdShowError", "onRewardedAdStarted", "mopub-sdk-fullscreen_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdListener.class */
public interface MoPubRewardedAdListener {
    void onRewardedAdClicked(String str);

    void onRewardedAdClosed(String str);

    void onRewardedAdCompleted(Set<String> set, MoPubReward moPubReward);

    void onRewardedAdLoadFailure(String str, MoPubErrorCode moPubErrorCode);

    void onRewardedAdLoadSuccess(String str);

    void onRewardedAdShowError(String str, MoPubErrorCode moPubErrorCode);

    void onRewardedAdStarted(String str);
}
