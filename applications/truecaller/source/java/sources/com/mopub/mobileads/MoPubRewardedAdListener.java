package com.mopub.mobileads;

import com.mopub.common.MoPubReward;
import java.util.Set;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\"\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\u0006J\u001f\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\r\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u000e\u0010\u0006J'\u0010\u0013\u001a\u00020\u00042\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H&¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/mopub/mobileads/MoPubRewardedAdListener;", "", "", "adUnitId", "Ls1/s;", "onRewardedAdLoadSuccess", "(Ljava/lang/String;)V", "Lcom/mopub/mobileads/MoPubErrorCode;", "errorCode", "onRewardedAdLoadFailure", "(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V", "onRewardedAdStarted", "onRewardedAdShowError", "onRewardedAdClicked", "onRewardedAdClosed", "", "adUnitIds", "Lcom/mopub/common/MoPubReward;", "reward", "onRewardedAdCompleted", "(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V", "mopub-sdk-fullscreen_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubRewardedAdListener.class */
public interface MoPubRewardedAdListener {
    void onRewardedAdClicked(String str);

    void onRewardedAdClosed(String str);

    void onRewardedAdCompleted(Set<String> set, MoPubReward moPubReward);

    void onRewardedAdLoadFailure(String str, MoPubErrorCode moPubErrorCode);

    void onRewardedAdLoadSuccess(String str);

    void onRewardedAdShowError(String str, MoPubErrorCode moPubErrorCode);

    void onRewardedAdStarted(String str);
}
