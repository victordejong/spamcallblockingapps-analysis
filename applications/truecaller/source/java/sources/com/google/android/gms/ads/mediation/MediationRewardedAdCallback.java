package com.google.android.gms.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationRewardedAdCallback.class */
public interface MediationRewardedAdCallback extends MediationAdCallback {
    void onAdFailedToShow(@RecentlyNonNull AdError adError);

    @Deprecated
    void onAdFailedToShow(@RecentlyNonNull String str);

    void onUserEarnedReward(@RecentlyNonNull RewardItem rewardItem);

    void onVideoComplete();

    void onVideoStart();
}
