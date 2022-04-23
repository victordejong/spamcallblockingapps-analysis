package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import com.android.volley.toolbox.JsonRequest;
import com.mopub.common.AdReport;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView.class */
public class BaseHtmlWebView extends BaseWebView {

    /* renamed from: c */
    public final ViewGestureDetector f34061c;

    /* renamed from: com.mopub.mobileads.BaseHtmlWebView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView$a.class */
    public class View$OnTouchListenerC8767a implements View.OnTouchListener {
        public View$OnTouchListenerC8767a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            BaseHtmlWebView.this.f34061c.onTouchEvent(motionEvent);
            return motionEvent.getAction() == 2;
        }
    }

    public BaseHtmlWebView(Context context, AdReport adReport) {
        super(context);
        m4424c();
        getSettings().setJavaScriptEnabled(true);
        this.f34061c = new ViewGestureDetector(context, this, adReport);
        setBackgroundColor(0);
    }

    /* renamed from: a */
    public void m4425a(String str) {
        loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", JsonRequest.PROTOCOL_CHARSET, null);
    }

    /* renamed from: c */
    public final void m4424c() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    /* renamed from: d */
    public void m4423d() {
        setOnTouchListener(new View$OnTouchListenerC8767a());
    }

    public void init() {
        m4423d();
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (str != null) {
            if (str.startsWith("javascript:")) {
                super.loadUrl(str);
                return;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Loading url: " + str);
        }
    }

    public void onResetUserClick() {
        ViewGestureDetector viewGestureDetector = this.f34061c;
        if (viewGestureDetector != null) {
            viewGestureDetector.onResetUserClick();
        }
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (this.f34068a) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, BaseHtmlWebView.class.getSimpleName() + "#stopLoading() called after destroy()");
            return;
        }
        WebSettings settings = getSettings();
        if (settings == null) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, BaseHtmlWebView.class.getSimpleName() + "#getSettings() returned null");
            return;
        }
        settings.setJavaScriptEnabled(false);
        super.stopLoading();
        settings.setJavaScriptEnabled(true);
    }

    public boolean wasClicked() {
        ViewGestureDetector viewGestureDetector = this.f34061c;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }
}
