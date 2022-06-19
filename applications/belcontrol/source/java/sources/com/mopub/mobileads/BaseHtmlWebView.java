package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView.class */
public class BaseHtmlWebView extends BaseWebViewViewability {

    /* renamed from: m */
    public final ViewGestureDetector f4639m;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener.class */
    public interface BaseWebViewListener {
        void onClicked();

        void onClose();

        void onExpand();

        void onFailed();

        void onFailedToLoad(MoPubErrorCode moPubErrorCode);

        void onLoaded(View view);

        void onRenderProcessGone(MoPubErrorCode moPubErrorCode);

        void onResize(boolean z);
    }

    /* renamed from: com.mopub.mobileads.BaseHtmlWebView$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView$a.class */
    public class View$OnTouchListenerC1072a implements View.OnTouchListener {
        public View$OnTouchListenerC1072a() {
            BaseHtmlWebView.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            BaseHtmlWebView.this.f4639m.onTouchEvent(motionEvent);
            return motionEvent.getAction() == 2;
        }
    }

    public BaseHtmlWebView(Context context) {
        super(context);
        m3707i();
        getSettings().setJavaScriptEnabled(true);
        this.f4639m = new ViewGestureDetector(context);
        setBackgroundColor(0);
    }

    /* renamed from: i */
    public final void m3707i() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    public void init() {
        m3706j();
    }

    /* renamed from: j */
    public void m3706j() {
        setOnTouchListener(new View$OnTouchListenerC1072a());
    }

    /* renamed from: k */
    public void m3705k(String str) {
        loadDataWithBaseURL(Networking.getScheme() + "://" + Constants.HOST + "/", str, "text/html", "utf-8", null);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (str == null) {
            return;
        }
        if (str.startsWith("javascript:")) {
            super.loadUrl(str);
            return;
        }
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Loading url: " + str);
    }

    public void onResetUserClick() {
        ViewGestureDetector viewGestureDetector = this.f4639m;
        if (viewGestureDetector != null) {
            viewGestureDetector.m3506a();
        }
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (this.f4646a) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, BaseHtmlWebView.class.getSimpleName() + "#stopLoading() called after destroy()");
            return;
        }
        WebSettings settings = getSettings();
        if (settings != null) {
            settings.setJavaScriptEnabled(false);
            super.stopLoading();
            settings.setJavaScriptEnabled(true);
            return;
        }
        MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent2, BaseHtmlWebView.class.getSimpleName() + "#getSettings() returned null");
    }

    public boolean wasClicked() {
        ViewGestureDetector viewGestureDetector = this.f4639m;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }
}
