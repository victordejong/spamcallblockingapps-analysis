package com.bytedance.sdk.openadsdk;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/CustomEventInterstitialListener.class */
public interface CustomEventInterstitialListener {
    void onInterstitialClicked();

    void onInterstitialDismissed();

    void onInterstitialImpression();

    void onInterstitialShowFail();

    void onInterstitialShown();

    void onLeaveApplication();
}
