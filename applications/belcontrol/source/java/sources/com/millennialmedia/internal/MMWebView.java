package com.millennialmedia.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Build;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.google.android.exoplayer2.C0515C;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.JSBridge;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import java.lang.ref.WeakReference;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMWebView.class */
public class MMWebView extends WebView implements ViewTreeObserver.OnScrollChangedListener {
    private static final String TAG = MMWebView.class.getSimpleName();
    public static boolean googleSecurityPatchEnabled = true;
    public String currentUrl;
    private GestureDetector gestureDetector;
    public JSBridge jsBridge;
    private bf1 moatFactory;
    private final MMWebViewOptions options;
    private final ViewUtils.ViewabilityWatcher viewabilityWatcher;
    private rf1 webAdTracker;
    public final MMWebViewListener webViewListener;
    private boolean jsScriptsInjected = false;
    private int[] lastPosition = new int[2];
    private int[] currentPosition = new int[2];
    private volatile boolean destroyed = false;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMWebView$MMWebChromeClient.class */
    public static class MMWebChromeClient extends WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            if (webView.getContext() != EnvironmentUtils.getApplicationContext()) {
                return super.onJsAlert(webView, str, str2, jsResult);
            }
            Toast.makeText(webView.getContext(), str2, 0).show();
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            if (webView.getContext() != EnvironmentUtils.getApplicationContext()) {
                return super.onJsBeforeUnload(webView, str, str2, jsResult);
            }
            Toast.makeText(webView.getContext(), str2, 0).show();
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            if (webView.getContext() != EnvironmentUtils.getApplicationContext()) {
                return super.onJsConfirm(webView, str, str2, jsResult);
            }
            Toast.makeText(webView.getContext(), str2, 0).show();
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            if (webView.getContext() != EnvironmentUtils.getApplicationContext()) {
                return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            }
            Toast.makeText(webView.getContext(), str2, 0).show();
            jsPromptResult.confirm(str3);
            return true;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMWebView$MMWebViewClient.class */
    public static class MMWebViewClient extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            if (webView instanceof MMWebView) {
                ((MMWebView) webView).webViewListener.onFailed();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (webView instanceof MMWebView) {
                MMWebView mMWebView = (MMWebView) webView;
                if (mMWebView.isOriginalUrl(str) || !mMWebView.jsBridge.areApiCallsEnabled() || !Utils.startActivityFromUrl(str)) {
                    return true;
                }
                mMWebView.webViewListener.onAdLeftApplication();
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMWebView$MMWebViewGestureListener.class */
    public static class MMWebViewGestureListener extends GestureDetector.SimpleOnGestureListener {
        public MMWebViewListener webViewListener;

        public MMWebViewGestureListener(MMWebViewListener mMWebViewListener) {
            this.webViewListener = mMWebViewListener;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            this.webViewListener.onClicked();
            return true;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener.class */
    public static class MMWebViewJSBridgeListener implements JSBridge.JSBridgeListener {
        public WeakReference<MMWebView> mmWebViewRef;

        public MMWebViewJSBridgeListener(MMWebView mMWebView) {
            this.mmWebViewRef = new WeakReference<>(mMWebView);
        }

        private MMWebView getWebView() {
            MMWebView mMWebView = this.mmWebViewRef.get();
            if (mMWebView == null || mMWebView.isDestroyed()) {
                return null;
            }
            return mMWebView;
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void close() {
            MMWebView mMWebView = this.mmWebViewRef.get();
            if (mMWebView != null) {
                mMWebView.webViewListener.close();
            }
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public boolean expand(SizableStateManager.ExpandParams expandParams) {
            MMWebView webView = getWebView();
            if (webView == null) {
                return false;
            }
            return webView.webViewListener.expand(expandParams);
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void onAdLeftApplication() {
            MMWebView webView = getWebView();
            if (webView != null) {
                webView.webViewListener.onAdLeftApplication();
            }
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void onInjectedScriptsLoaded() {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(MMWebView.TAG, "Injected scripts have been loaded");
            }
            MMWebView webView = getWebView();
            if (webView == null) {
                MMLog.m4068e(MMWebView.TAG, "MMWebView reference no longer points to a valid object");
                return;
            }
            webView.jsScriptsInjected = true;
            webView.jsBridge.setLogLevel(MMLog.logLevel);
            webView.setLoaded();
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void onJSBridgeReady() {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(MMWebView.TAG, "JSBridge is ready");
            }
            MMWebView webView = getWebView();
            if (webView != null) {
                webView.webViewListener.onReady();
            }
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public boolean resize(SizableStateManager.ResizeParams resizeParams) {
            MMWebView webView = getWebView();
            if (webView == null) {
                return false;
            }
            return webView.webViewListener.resize(resizeParams);
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void setOrientation(int i) {
            MMWebView webView = getWebView();
            if (webView != null) {
                webView.webViewListener.setOrientation(i);
            }
        }

        @Override // com.millennialmedia.internal.JSBridge.JSBridgeListener
        public void showCloseIndicator(boolean z) {
            MMWebView webView = getWebView();
            if (webView != null) {
                webView.webViewListener.showCloseIndicator(z);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMWebView$MMWebViewListener.class */
    public interface MMWebViewListener {
        void close();

        boolean expand(SizableStateManager.ExpandParams expandParams);

        void onAdLeftApplication();

        void onClicked();

        void onFailed();

        void onLoaded();

        void onReady();

        boolean resize(SizableStateManager.ResizeParams resizeParams);

        void setOrientation(int i);

        void showCloseIndicator(boolean z);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMWebView$MMWebViewOptions.class */
    public static class MMWebViewOptions {
        public final boolean enableEnhancedAdControl;
        public final boolean enableMoat;
        public final boolean interstitial;
        public final boolean transparent;

        public MMWebViewOptions(boolean z, boolean z2, boolean z3, boolean z4) {
            this.interstitial = z;
            this.transparent = z2;
            this.enableMoat = z3;
            this.enableEnhancedAdControl = z4;
        }

        public static MMWebViewOptions getDefault() {
            return new MMWebViewOptions(false, false, false, false);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener.class */
    public static class MMWebViewViewabilityListener implements ViewUtils.ViewabilityListener {
        public WeakReference<MMWebView> mmWebViewRef;

        public MMWebViewViewabilityListener(MMWebView mMWebView) {
            this.mmWebViewRef = new WeakReference<>(mMWebView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(boolean z) {
            MMWebView mMWebView = this.mmWebViewRef.get();
            if (mMWebView == null || mMWebView.jsBridge == null || mMWebView.isDestroyed()) {
                return;
            }
            mMWebView.jsBridge.setViewable(z);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    @TargetApi(17)
    public MMWebView(Context context, MMWebViewOptions mMWebViewOptions, MMWebViewListener mMWebViewListener) {
        super(new MutableContextWrapper(context));
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Creating webview " + hashCode());
        }
        mMWebViewOptions = mMWebViewOptions == null ? MMWebViewOptions.getDefault() : mMWebViewOptions;
        this.options = mMWebViewOptions;
        setTag("MMWebView");
        if (mMWebViewListener != null) {
            this.webViewListener = mMWebViewListener;
            if (mMWebViewOptions.transparent) {
                setBackgroundColor(0);
            }
            setHorizontalScrollBarEnabled(false);
            setVerticalScrollBarEnabled(false);
            this.gestureDetector = new GestureDetector(context.getApplicationContext(), new MMWebViewGestureListener(mMWebViewListener));
            setWebViewClient(new MMWebViewClient());
            setWebChromeClient(new MMWebChromeClient());
            WebSettings settings = getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setCacheMode(-1);
            settings.setDefaultTextEncodingName(C0515C.UTF8_NAME);
            settings.setLoadWithOverviewMode(true);
            settings.setGeolocationEnabled(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            if (Build.VERSION.SDK_INT >= 17) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "Disabling user gesture requirement for media playback");
                }
                settings.setMediaPlaybackRequiresUserGesture(false);
            }
            if (MMLog.isDebugEnabled()) {
                String str2 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Google security patch is ");
                sb.append(googleSecurityPatchEnabled ? "enabled" : "disabled");
                MMLog.m4070d(str2, sb.toString());
            }
            settings.setAllowFileAccess(!googleSecurityPatchEnabled);
            settings.setAllowContentAccess(!googleSecurityPatchEnabled);
            settings.setAllowFileAccessFromFileURLs(!googleSecurityPatchEnabled);
            settings.setAllowUniversalAccessFromFileURLs(true ^ googleSecurityPatchEnabled);
            JSBridge jSBridge = new JSBridge(this, mMWebViewOptions.interstitial, new MMWebViewJSBridgeListener(this));
            this.jsBridge = jSBridge;
            if (mMWebViewOptions.enableEnhancedAdControl) {
                jSBridge.enableApiCalls();
            }
            ViewUtils.ViewabilityWatcher viewabilityWatcher = new ViewUtils.ViewabilityWatcher(this, new MMWebViewViewabilityListener(this));
            this.viewabilityWatcher = viewabilityWatcher;
            viewabilityWatcher.startWatching();
            return;
        }
        throw new IllegalArgumentException("Unable to create MMWebView instance, specified listener is null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x004f, code lost:
        if (r4.startsWith(r3.currentUrl + "#") != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isOriginalUrl(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.String r0 = r0.currentUrl
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L57
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            r1 = r3
            java.lang.String r1 = r1.currentUrl
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = "?"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            java.lang.String r1 = r1.toString()
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L52
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            r1 = r3
            java.lang.String r1 = r1.currentUrl
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = "#"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            java.lang.String r1 = r1.toString()
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L57
        L52:
            r0 = 1
            r6 = r0
            goto L59
        L57:
            r0 = 0
            r6 = r0
        L59:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.MMWebView.isOriginalUrl(java.lang.String):boolean");
    }

    public void loadUrlOnUiThread(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Error loading url", e);
        }
    }

    public void setLoaded() {
        if (this.jsScriptsInjected) {
            onLoaded();
        }
    }

    public void callJavascript(String str, Object... objArr) {
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.callJavascript(str, objArr);
        }
    }

    public String getExtraScriptToInject() {
        return null;
    }

    @Override // android.webkit.WebView
    public String getUrl() {
        if (this.destroyed) {
            return null;
        }
        return super.getUrl();
    }

    public void injectExtraAPIs() {
    }

    public void invokeCallback(String str, Object... objArr) {
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.invokeCallback(str, objArr);
        }
    }

    public boolean isDestroyed() {
        return this.destroyed;
    }

    public boolean isEnhancedAdControlEnabled() {
        return this.jsBridge.areApiCallsEnabled();
    }

    public boolean isJSBridgeReady() {
        return this.jsBridge.isReady();
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.currentUrl = str;
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Error hit when calling through to loadDataWithBaseUrl", e);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(final String str) {
        if (TextUtils.isEmpty(str)) {
            MMLog.m4068e(TAG, "Url is null or empty");
        } else if (this.destroyed) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "Attempt to load url after webview has been destroyed");
        } else {
            if (str.startsWith("http")) {
                this.currentUrl = str;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.MMWebView.2
                @Override // java.lang.Runnable
                public void run() {
                    MMWebView.this.loadUrlOnUiThread(str);
                }
            });
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        String str;
        String str2;
        super.onAttachedToWindow();
        if (this.options.enableMoat) {
            Activity activityForView = ViewUtils.getActivityForView(this);
            if (activityForView != null) {
                bf1 m5668a = bf1.m5668a(activityForView);
                this.moatFactory = m5668a;
                if (this.webAdTracker == null) {
                    rf1 mo1573c = m5668a.mo1573c(this);
                    this.webAdTracker = mo1573c;
                    if (mo1573c.mo567a()) {
                        MMLog.m4064v(TAG, "MOAT tracking enabled for MMWebView.");
                    } else if (MMLog.isDebugEnabled()) {
                        str = TAG;
                        str2 = "MOAT tracking initialization failed.";
                        MMLog.m4070d(str, str2);
                    }
                }
            } else {
                MMLog.m4062w(TAG, "MOAT disabled. Cannot determine host Activity for Ad.");
            }
        } else if (MMLog.isDebugEnabled()) {
            str = TAG;
            str2 = "Moat is not enabled for this MMWebView.";
            MMLog.m4070d(str, str2);
        }
        getLocationOnScreen(this.lastPosition);
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.addOnScrollChangedListener(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnScrollChangedListener(this);
        }
        super.onDetachedFromWindow();
    }

    public void onLoaded() {
        this.webViewListener.onLoaded();
    }

    public void onNotifyClicked() {
        this.webViewListener.onClicked();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        getLocationOnScreen(this.currentPosition);
        int[] iArr = this.currentPosition;
        int i = iArr[0];
        int[] iArr2 = this.lastPosition;
        if (i == iArr2[0] && iArr[1] == iArr2[1]) {
            return;
        }
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge == null) {
            return;
        }
        jSBridge.setScrolledPosition(this);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.setCurrentPosition(this);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.jsBridge.enableApiCalls();
        }
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void release() {
        if (!ThreadUtils.isUiThread()) {
            MMLog.m4068e(TAG, "release must be called on the UI thread");
            return;
        }
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Releasing webview " + hashCode());
        }
        if (getParent() != null) {
            ViewUtils.removeFromParent(this);
        }
        super.loadUrl("about:blank");
        stopLoading();
        setWebChromeClient(null);
        setWebViewClient(null);
        try {
            destroy();
        } catch (Exception e) {
            MMLog.m4067e(TAG, "An error occurred destroying the webview.", e);
        }
        this.gestureDetector = null;
        this.destroyed = true;
    }

    public void setContent(String str) {
        if (TextUtils.isEmpty(str)) {
            this.webViewListener.onFailed();
            return;
        }
        this.jsScriptsInjected = false;
        final String activePlaylistServerBaseUrl = Handshake.getActivePlaylistServerBaseUrl();
        final String injectJSBridge = this.jsBridge.injectJSBridge(str, URLUtil.isHttpsUrl(activePlaylistServerBaseUrl));
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.MMWebView.1
            @Override // java.lang.Runnable
            public void run() {
                MMWebView.this.loadDataWithBaseURL(activePlaylistServerBaseUrl, injectJSBridge, "text/html", C0515C.UTF8_NAME, "mmadsdk");
            }
        });
    }

    public void setStateCollapsed() {
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.setStateCollapsed();
        }
    }

    public void setStateExpanded() {
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.setStateExpanded();
        }
    }

    public void setStateResized() {
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.setStateResized();
        }
    }

    public void setStateResizing() {
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.setStateResizing();
        }
    }

    public void setStateUnresized() {
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.setStateUnresized();
        }
    }

    public void setTwoPartExpand() {
        JSBridge jSBridge = this.jsBridge;
        if (jSBridge != null) {
            jSBridge.setTwoPartExpand();
        }
    }
}
