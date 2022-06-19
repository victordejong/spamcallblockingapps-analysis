package net.pubnative.lite.sdk.vpaid;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.pubnativenet.adsession.EnumC16422f;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.List;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.UrlHandler;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityFriendlyObstruction;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityNativeVideoAdSession;
import net.pubnative.lite.sdk.vpaid.VideoAdController;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import net.pubnative.lite.sdk.vpaid.enums.VastError;
import net.pubnative.lite.sdk.vpaid.helpers.ErrorLog;
import net.pubnative.lite.sdk.vpaid.helpers.EventTracker;
import net.pubnative.lite.sdk.vpaid.models.vast.Tracking;
import net.pubnative.lite.sdk.vpaid.models.vpaid.AdSpotDimensions;
import net.pubnative.lite.sdk.vpaid.models.vpaid.CreativeParams;
import net.pubnative.lite.sdk.vpaid.models.vpaid.TrackingEvent;
import net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler;
import net.pubnative.lite.sdk.vpaid.protocol.ViewControllerVpaid;
import net.pubnative.lite.sdk.vpaid.protocol.VpaidBridge;
import net.pubnative.lite.sdk.vpaid.protocol.VpaidBridgeImpl;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
import net.pubnative.lite.sdk.vpaid.utils.Utils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdControllerVpaid.class */
public class VideoAdControllerVpaid implements VideoAdController, BridgeEventHandler {
    private static final String BASE_URL = "http://pubnative.net";
    private static final String ENVIRONMENT_VARS = "{ slot: document.getElementById('slot'), videoSlot: document.getElementById('video-slot'), videoSlotCanAutoPlay: true }";
    private static final String HTML_SOURCE_FILE = "ad.html";
    private static final String LOG_TAG = "VideoAdControllerVpaid";
    private static final String MIME_TYPE = "text/html";
    private static final String VPAID_CREATIVE_URL_STRING = "[VPAID_CREATIVE_URL]";
    private final AdParams mAdParams;
    private final AdSpotDimensions mAdSpotDimensions;
    private final BaseVideoAdInternal mBaseAdInternal;
    private String mEndCardFilePath;
    private boolean mIsStarted;
    private boolean mIsWaitingForSkippableState;
    private boolean mIsWaitingForWebView;
    private VideoAdController.OnPreparedListener mOnPreparedListener;
    private String mVastFileContent;
    private HyBidViewabilityNativeVideoAdSession mViewabilityAdSession;
    private WebView mWebView;
    private boolean mFinishedPlaying = false;
    private List<HyBidViewabilityFriendlyObstruction> mViewabilityFriendlyObstructions = new ArrayList();
    private final VpaidBridge mVpaidBridge = new VpaidBridgeImpl(this, createCreativeParams());
    private final ViewControllerVpaid mViewControllerVpaid = new ViewControllerVpaid(this);

    public VideoAdControllerVpaid(BaseVideoAdInternal baseVideoAdInternal, AdParams adParams, AdSpotDimensions adSpotDimensions, String str, HyBidViewabilityNativeVideoAdSession hyBidViewabilityNativeVideoAdSession) {
        this.mBaseAdInternal = baseVideoAdInternal;
        this.mAdParams = adParams;
        this.mAdSpotDimensions = adSpotDimensions;
        this.mVastFileContent = str;
        this.mViewabilityAdSession = hyBidViewabilityNativeVideoAdSession;
    }

    private CreativeParams createCreativeParams() {
        CreativeParams creativeParams = new CreativeParams(this.mAdSpotDimensions.getWidth(), this.mAdSpotDimensions.getHeight(), "normal", 720);
        creativeParams.setAdParameters("{'AdParameters':'" + this.mAdParams.getAdParams() + "'}");
        creativeParams.setEnvironmentVars(ENVIRONMENT_VARS);
        return creativeParams;
    }

    private void initWebView() {
        WebView webView = new WebView(this.mBaseAdInternal.getContext());
        this.mWebView = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        if (Utils.isDebug()) {
            settings.setCacheMode(2);
            this.mWebView.clearCache(true);
        }
        this.mWebView.setWebChromeClient(new WebChromeClient());
        this.mIsWaitingForWebView = true;
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVpaid.4
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                if (VideoAdControllerVpaid.this.mIsWaitingForWebView) {
                    VideoAdControllerVpaid.this.mVpaidBridge.prepare();
                    Logger.m630d(VideoAdControllerVpaid.LOG_TAG, "Init webView done");
                    VideoAdControllerVpaid.this.mIsWaitingForWebView = false;
                }
            }
        });
        CookieManager.getInstance().setAcceptCookie(true);
        this.mWebView.addJavascriptInterface(this.mVpaidBridge, Constants.ANDROID_PLATFORM);
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public boolean adFinishedPlaying() {
        return this.mFinishedPlaying;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void addViewabilityFriendlyObstruction(View view, EnumC16422f enumC16422f, String str) {
        if (view == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.mViewabilityFriendlyObstructions.add(new HyBidViewabilityFriendlyObstruction(view, enumC16422f, str));
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void buildVideoAdView(VideoAdView videoAdView) {
        this.mViewControllerVpaid.buildVideoAdView(videoAdView, this.mWebView);
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void callJsMethod(final String str) {
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVpaid.3
            @Override // java.lang.Runnable
            public void run() {
                if (VideoAdControllerVpaid.this.mWebView != null) {
                    WebView webView = VideoAdControllerVpaid.this.mWebView;
                    webView.loadUrl("javascript:" + str);
                }
            }
        });
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void closeSelf() {
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVpaid.5
            @Override // java.lang.Runnable
            public void run() {
                VideoAdControllerVpaid.this.mIsWaitingForWebView = false;
                VideoAdControllerVpaid.this.mVpaidBridge.stopAd();
                VideoAdControllerVpaid.this.mBaseAdInternal.dismiss();
            }
        });
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void destroy() {
        if (this.mWebView != null) {
            runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVpaid.1
                @Override // java.lang.Runnable
                public void run() {
                    if (VideoAdControllerVpaid.this.mWebView.getParent() != null) {
                        ((ViewGroup) VideoAdControllerVpaid.this.mWebView.getParent()).removeAllViews();
                    }
                    VideoAdControllerVpaid.this.mWebView.clearHistory();
                    VideoAdControllerVpaid.this.mWebView.clearCache(true);
                    VideoAdControllerVpaid.this.mWebView.loadUrl("about:blank");
                    VideoAdControllerVpaid.this.mWebView.pauseTimers();
                    VideoAdControllerVpaid.this.mWebView = null;
                }
            });
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void dismiss() {
        this.mVpaidBridge.pauseAd();
        this.mVpaidBridge.stopAd();
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.clearCache(true);
            this.mWebView.clearFormData();
            this.mWebView.clearView();
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public AdParams getAdParams() {
        return this.mAdParams;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public HyBidViewabilityNativeVideoAdSession getViewabilityAdSession() {
        return this.mViewabilityAdSession;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public List<HyBidViewabilityFriendlyObstruction> getViewabilityFriendlyObstructions() {
        return this.mViewabilityFriendlyObstructions;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public boolean isRewarded() {
        return this.mBaseAdInternal.isRewarded();
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void onAdImpression() {
        for (String str : this.mAdParams.getImpressions()) {
            EventTracker.post(this.mBaseAdInternal.getContext(), str);
            Logger.m630d(LOG_TAG, "mAdParams.getImpressions() ".concat(String.valueOf(str)));
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void onAdLinearChange() {
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void onAdSkipped() {
        if (!this.mIsStarted) {
            return;
        }
        this.mIsWaitingForSkippableState = true;
        this.mVpaidBridge.getAdSkippableState();
        this.mFinishedPlaying = true;
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void onAdStopped() {
        if (!this.mIsStarted) {
            return;
        }
        postEvent(EventConstants.CLOSE);
        skipVideo();
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void onAdVolumeChange() {
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void onDurationChanged() {
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void onPrepared() {
        this.mOnPreparedListener.onPrepared();
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void openUrl(String str) {
        for (String str2 : this.mAdParams.getVideoClicks()) {
            EventTracker.post(this.mBaseAdInternal.getContext(), str2);
        }
        String str3 = str;
        if (TextUtils.isEmpty(str)) {
            str3 = this.mAdParams.getVideoRedirectUrl();
        }
        this.mViewabilityAdSession.fireClick();
        String str4 = LOG_TAG;
        Logger.m630d(str4, "Handle external url");
        if (Utils.isOnline()) {
            new UrlHandler(this.mBaseAdInternal.getContext()).handleUrl(str3);
        } else {
            Logger.m628e(str4, "No internet connection");
        }
        this.mBaseAdInternal.onAdClicked();
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void pause() {
        if (this.mIsStarted) {
            this.mVpaidBridge.pauseAd();
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void playAd() {
        this.mIsStarted = true;
        this.mVpaidBridge.startAd();
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void postEvent(String str) {
        EventTracker.postEventByType(this.mBaseAdInternal.getContext(), this.mAdParams.getEvents(), str);
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void postEvent(String str, int i) {
        for (Tracking tracking : this.mAdParams.getEvents()) {
            TrackingEvent trackingEvent = new TrackingEvent(tracking.getText());
            if (tracking.getEvent().equalsIgnoreCase(EventConstants.PROGRESS) && tracking.getOffset() != null) {
                if (Utils.parseDuration(tracking.getOffset()) == this.mAdParams.getDuration() - i) {
                    EventTracker.post(this.mBaseAdInternal.getContext(), trackingEvent.url);
                }
            }
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void prepare(VideoAdController.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
        try {
            initWebView();
            this.mWebView.loadDataWithBaseURL(BASE_URL, Utils.readAssets(this.mBaseAdInternal.getContext().getAssets(), HTML_SOURCE_FILE).replace(VPAID_CREATIVE_URL_STRING, this.mAdParams.getVpaidJsUrl()), "text/html", "UTF-8", null);
        } catch (Exception e) {
            String str = LOG_TAG;
            Logger.m628e(str, "Can't read assets: " + e.getMessage());
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void resume() {
        this.mVpaidBridge.resumeAd();
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void runOnUiThread(Runnable runnable) {
        BaseVideoAdInternal baseVideoAdInternal = this.mBaseAdInternal;
        if (baseVideoAdInternal != null) {
            baseVideoAdInternal.runOnUiThread(runnable);
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void setEndCardFilePath(String str) {
        this.mEndCardFilePath = str;
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void setSkippableState(boolean z) {
        if (this.mIsStarted && this.mIsWaitingForSkippableState && z) {
            this.mIsWaitingForSkippableState = false;
            postEvent(EventConstants.SKIP);
            skipVideo();
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void setVideoFilePath(String str) {
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void setVolume(boolean z) {
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void skipVideo() {
        this.mIsStarted = false;
        runOnUiThread(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVpaid.2
            @Override // java.lang.Runnable
            public void run() {
                VideoAdControllerVpaid.this.mBaseAdInternal.dismiss();
            }
        });
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void toggleMute() {
    }

    @Override // net.pubnative.lite.sdk.vpaid.protocol.BridgeEventHandler
    public void trackError(String str) {
        ErrorLog.postError(this.mBaseAdInternal.getContext(), VastError.VPAID);
    }
}
