package net.pubnative.lite.sdk.vpaid.protocol;

import android.webkit.JavascriptInterface;
import java.util.Locale;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import net.pubnative.lite.sdk.vpaid.models.vpaid.CreativeParams;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/protocol/VpaidBridgeImpl.class */
public class VpaidBridgeImpl implements VpaidBridge {
    private static final String LOG_TAG = "VpaidBridgeImpl";
    private final BridgeEventHandler mBridge;
    private final CreativeParams mCreativeParams;

    public VpaidBridgeImpl(BridgeEventHandler bridgeEventHandler, CreativeParams creativeParams) {
        this.mBridge = bridgeEventHandler;
        this.mCreativeParams = creativeParams;
    }

    private void callJsMethod(String str) {
        this.mBridge.callJsMethod(str);
    }

    private void callWrapper(String str) {
        callJsMethod("vapidWrapperInstance.".concat(String.valueOf(str)));
    }

    private void initAd() {
        Logger.m630d(LOG_TAG, "JS: call initAd()");
        callWrapper(String.format(Locale.ENGLISH, "initAd(%1$d,%2$d,%3$s,%4$s,%5$s,%6$s)", Integer.valueOf(this.mCreativeParams.getWidth()), Integer.valueOf(this.mCreativeParams.getHeight()), this.mCreativeParams.getViewMode(), Integer.valueOf(this.mCreativeParams.getDesiredBitrate()), this.mCreativeParams.getCreativeData(), this.mCreativeParams.getEnvironmentVars()));
    }

    private void runOnUiThread(Runnable runnable) {
        this.mBridge.runOnUiThread(runnable);
    }

    @JavascriptInterface
    public void getAdDurationResult(int i) {
        Logger.m630d(LOG_TAG, "JS: getAdDurationResult: ".concat(String.valueOf(i)));
    }

    @JavascriptInterface
    public void getAdExpandedResult(String str) {
        Logger.m630d(LOG_TAG, "JS: getAdExpandedResult");
    }

    @JavascriptInterface
    public void getAdLinearResult(boolean z) {
        Logger.m630d(LOG_TAG, "getAdLinearResult: ".concat(String.valueOf(z)));
    }

    @JavascriptInterface
    public void getAdRemainingTimeResult(int i) {
        Logger.m630d(LOG_TAG, "JS: getAdRemainingTimeResult: ".concat(String.valueOf(i)));
        if (i == 0) {
            this.mBridge.postEvent(EventConstants.COMPLETE);
        } else {
            this.mBridge.postEvent(EventConstants.PROGRESS, i);
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.VpaidBridge
    public void getAdSkippableState() {
        Logger.m630d(LOG_TAG, "call getAdSkippableState()");
        callWrapper("getAdSkippableState()");
    }

    @JavascriptInterface
    public void getAdSkippableStateResult(boolean z) {
        Logger.m630d(LOG_TAG, "JS: SkippableState: ".concat(String.valueOf(z)));
        this.mBridge.setSkippableState(z);
    }

    @JavascriptInterface
    public void getAdVolumeResult() {
        Logger.m630d(LOG_TAG, "JS: getAdVolumeResult");
    }

    @JavascriptInterface
    public String handshakeVersionResult(String str) {
        Logger.m630d(LOG_TAG, "JS: handshakeVersion()");
        return str;
    }

    @JavascriptInterface
    public void initAdResult() {
        Logger.m630d(LOG_TAG, "JS: Init ad done");
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.VpaidBridge
    public void pauseAd() {
        Logger.m630d(LOG_TAG, "call pauseAd()");
        callWrapper("pauseAd()");
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.VpaidBridge
    public void prepare() {
        Logger.m630d(LOG_TAG, "call initVpaidWrapper()");
        callJsMethod("initVpaidWrapper()");
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.VpaidBridge
    public void resumeAd() {
        Logger.m630d(LOG_TAG, "call resumeAd()");
        callWrapper("resumeAd()");
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.VpaidBridge
    public void startAd() {
        Logger.m630d(LOG_TAG, "call startAd()");
        callWrapper("startAd()");
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.VpaidBridge
    public void stopAd() {
        Logger.m630d(LOG_TAG, "call stopAd()");
        callWrapper("stopAd()");
    }

    @JavascriptInterface
    public void vpaidAdClickThruIdPlayerHandles(String str, String str2, boolean z) {
        if (z) {
            this.mBridge.openUrl(str);
        }
    }

    @JavascriptInterface
    public void vpaidAdDurationChange() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdDurationChange");
        callWrapper("getAdDurationResult");
        this.mBridge.onDurationChanged();
    }

    @JavascriptInterface
    public void vpaidAdError(String str) {
        Logger.m630d(LOG_TAG, "JS: vpaidAdError".concat(String.valueOf(str)));
        this.mBridge.trackError(str);
    }

    @JavascriptInterface
    public void vpaidAdExpandedChange() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdExpandedChange");
    }

    @JavascriptInterface
    public void vpaidAdImpression() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdImpression");
        this.mBridge.onAdImpression();
    }

    @JavascriptInterface
    public void vpaidAdInteraction() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdInteraction");
    }

    @JavascriptInterface
    public void vpaidAdLinearChange() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdLinearChange");
        this.mBridge.onAdLinearChange();
    }

    @JavascriptInterface
    public void vpaidAdLoaded() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdLoaded");
        this.mBridge.onPrepared();
    }

    @JavascriptInterface
    public void vpaidAdLog(String str) {
        Logger.m630d(LOG_TAG, "JS: vpaidAdLog ".concat(String.valueOf(str)));
    }

    @JavascriptInterface
    public void vpaidAdPaused() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdPaused");
        this.mBridge.postEvent("pause");
    }

    @JavascriptInterface
    public void vpaidAdPlaying() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdPlaying");
        this.mBridge.postEvent("resume");
    }

    @JavascriptInterface
    public void vpaidAdRemainingTimeChange() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdRemainingTimeChange");
        callWrapper("getAdRemainingTime()");
    }

    @JavascriptInterface
    public void vpaidAdSizeChange() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdSizeChange");
    }

    @JavascriptInterface
    public void vpaidAdSkippableStateChange() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdSkippableStateChange");
    }

    @JavascriptInterface
    public void vpaidAdSkipped() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdSkipped");
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.protocol.VpaidBridgeImpl.1
            @Override // java.lang.Runnable
            public void run() {
                VpaidBridgeImpl.this.mBridge.onAdSkipped();
            }
        });
    }

    @JavascriptInterface
    public void vpaidAdStarted() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdStarted");
    }

    @JavascriptInterface
    public void vpaidAdStopped() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdStopped");
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.protocol.VpaidBridgeImpl.2
            @Override // java.lang.Runnable
            public void run() {
                VpaidBridgeImpl.this.mBridge.onAdStopped();
            }
        });
    }

    @JavascriptInterface
    public void vpaidAdUserAcceptInvitation() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdUserAcceptInvitation");
    }

    @JavascriptInterface
    public void vpaidAdUserClose() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdUserClose");
    }

    @JavascriptInterface
    public void vpaidAdUserMinimize() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdUserMinimize");
    }

    @JavascriptInterface
    public void vpaidAdVideoComplete() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdVideoComplete");
    }

    @JavascriptInterface
    public void vpaidAdVideoFirstQuartile() {
        this.mBridge.postEvent(EventConstants.FIRST_QUARTILE);
    }

    @JavascriptInterface
    public void vpaidAdVideoMidpoint() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdVideoMidpoint");
        this.mBridge.postEvent("midpoint");
    }

    @JavascriptInterface
    public void vpaidAdVideoStart() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdVideoStart");
        this.mBridge.postEvent(EventConstants.START);
    }

    @JavascriptInterface
    public void vpaidAdVideoThirdQuartile() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdVideoThirdQuartile");
        this.mBridge.postEvent(EventConstants.THIRD_QUARTILE);
    }

    @JavascriptInterface
    public void vpaidAdVolumeChanged() {
        Logger.m630d(LOG_TAG, "JS: vpaidAdVolumeChanged");
        this.mBridge.onAdVolumeChange();
    }

    @JavascriptInterface
    public void wrapperReady() {
        initAd();
    }
}
