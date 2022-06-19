package com.criteo.publisher;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitialAdListener.class */
public interface CriteoInterstitialAdListener {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToReceive(CriteoErrorCode criteoErrorCode);

    void onAdLeftApplication();

    void onAdOpened();

    void onAdReceived(CriteoInterstitial criteoInterstitial);
}
