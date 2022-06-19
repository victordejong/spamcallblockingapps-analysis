package com.criteo.publisher;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoBannerAdListener.class */
public interface CriteoBannerAdListener {
    void onAdClicked();

    void onAdFailedToReceive(CriteoErrorCode criteoErrorCode);

    void onAdLeftApplication();

    void onAdReceived(CriteoBannerView criteoBannerView);
}
