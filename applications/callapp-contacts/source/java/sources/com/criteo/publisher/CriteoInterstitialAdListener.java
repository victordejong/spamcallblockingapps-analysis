package com.criteo.publisher;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitialAdListener.class */
public interface CriteoInterstitialAdListener extends AbstractC8352j {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/CriteoInterstitialAdListener$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$onAdClosed(CriteoInterstitialAdListener criteoInterstitialAdListener) {
        }

        public static void $default$onAdOpened(CriteoInterstitialAdListener criteoInterstitialAdListener) {
        }
    }

    void onAdClosed();

    void onAdOpened();

    void onAdReceived(CriteoInterstitial criteoInterstitial);
}
