package com.pubmatic.sdk.openwrap.interstitial;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBBidsProvider;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener.class */
public interface POBInterstitialEventListener {
    POBBidsProvider getBidsProvider();

    Map<String, Object> getCustomData();

    void onAdClick();

    void onAdClosed();

    void onAdLeftApplication();

    void onAdOpened();

    void onAdServerWin();

    void onFailed(POBError pOBError);

    @Deprecated
    void onOpenWrapPartnerWin();

    void onOpenWrapPartnerWin(String str);
}
