package net.pubnative.lite.sdk.vpaid.protocol;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/protocol/BridgeEventHandler.class */
public interface BridgeEventHandler {
    void callJsMethod(String str);

    void onAdImpression();

    void onAdLinearChange();

    void onAdSkipped();

    void onAdStopped();

    void onAdVolumeChange();

    void onDurationChanged();

    void onPrepared();

    void openUrl(String str);

    void postEvent(String str);

    void postEvent(String str, int i);

    void runOnUiThread(Runnable runnable);

    void setSkippableState(boolean z);

    void trackError(String str);
}
