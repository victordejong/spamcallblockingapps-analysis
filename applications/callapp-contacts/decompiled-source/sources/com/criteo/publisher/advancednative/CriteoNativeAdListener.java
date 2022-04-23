package com.criteo.publisher.advancednative;

import com.criteo.publisher.CriteoErrorCode;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeAdListener.class */
public interface CriteoNativeAdListener {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeAdListener$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$onAdClicked(CriteoNativeAdListener criteoNativeAdListener) {
        }

        public static void $default$onAdClosed(CriteoNativeAdListener criteoNativeAdListener) {
        }

        public static void $default$onAdFailedToReceive(CriteoNativeAdListener criteoNativeAdListener, CriteoErrorCode criteoErrorCode) {
        }

        public static void $default$onAdImpression(CriteoNativeAdListener criteoNativeAdListener) {
        }

        public static void $default$onAdLeftApplication(CriteoNativeAdListener criteoNativeAdListener) {
        }
    }

    void onAdClicked();

    void onAdClosed();

    void onAdFailedToReceive(CriteoErrorCode criteoErrorCode);

    void onAdImpression();

    void onAdLeftApplication();

    void onAdReceived(CriteoNativeAd criteoNativeAd);
}
