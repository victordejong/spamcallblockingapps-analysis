package com.criteo.publisher.advancednative;

import androidx.annotation.Keep;
import com.criteo.publisher.CriteoErrorCode;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeAdListener.class */
public interface CriteoNativeAdListener {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToReceive(CriteoErrorCode criteoErrorCode);

    void onAdImpression();

    void onAdLeftApplication();

    void onAdReceived(CriteoNativeAd criteoNativeAd);
}
