package com.pubmatic.sdk.rewardedad;

import com.pubmatic.sdk.common.POBError;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBRewardedAdEventListener.class */
public interface POBRewardedAdEventListener {
    void onAdClick();

    void onAdClosed();

    void onAdLeftApplication();

    void onAdOpened();

    void onAdServerWin();

    void onFailed(POBError pOBError);

    void onOpenWrapPartnerWin(String str);
}
