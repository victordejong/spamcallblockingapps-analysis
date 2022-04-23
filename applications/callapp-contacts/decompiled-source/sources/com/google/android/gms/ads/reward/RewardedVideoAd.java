package com.google.android.gms.ads.reward;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/reward/RewardedVideoAd.class */
public interface RewardedVideoAd {
    @Deprecated
    void destroy();

    void destroy(Context context);

    Bundle getAdMetadata();

    String getCustomData();

    @Deprecated
    String getMediationAdapterClassName();

    ResponseInfo getResponseInfo();

    RewardedVideoAdListener getRewardedVideoAdListener();

    String getUserId();

    boolean isLoaded();

    void loadAd(String str, AdRequest adRequest);

    void loadAd(String str, PublisherAdRequest publisherAdRequest);

    @Deprecated
    void pause();

    void pause(Context context);

    @Deprecated
    void resume();

    void resume(Context context);

    void setAdMetadataListener(AdMetadataListener adMetadataListener);

    void setCustomData(String str);

    void setImmersiveMode(boolean z);

    void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener);

    void setUserId(String str);

    void show();
}
