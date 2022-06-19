package com.pubmatic.sdk.openwrap.banner;

import android.view.View;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBBidsProvider;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerEventListener.class */
public interface POBBannerEventListener {
    POBBidsProvider getBidsProvider();

    void onAdClick();

    void onAdClosed();

    void onAdLeftApplication();

    void onAdOpened();

    void onAdServerWin(View view);

    void onFailed(POBError pOBError);

    @Deprecated
    void onOpenWrapPartnerWin();

    void onOpenWrapPartnerWin(String str);
}
