package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView.class */
public class BaseHtmlWebView extends BaseWebViewViewability {

    /* renamed from: i */
    private final ViewGestureDetector f59123i;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener.class */
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

    public BaseHtmlWebView(Context context) {
        super(context);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        getSettings().setJavaScriptEnabled(true);
        this.f59123i = new ViewGestureDetector(context);
        setBackgroundColor(0);
    }

    public void init() {
        setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mobileads.BaseHtmlWebView.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                BaseHtmlWebView.this.f59123i.onTouchEvent(motionEvent);
                return motionEvent.getAction() == 2;
            }
        });
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (str == null) {
            return;
        }
        if (str.startsWith("javascript:")) {
            super.loadUrl(str);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Loading url: ".concat(String.valueOf(str)));
        }
    }

    public void onResetUserClick() {
        ViewGestureDetector viewGestureDetector = this.f59123i;
        if (viewGestureDetector != null) {
            viewGestureDetector.f59653a.f59654a = false;
        }
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (this.f59130a) {
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
        ViewGestureDetector viewGestureDetector = this.f59123i;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }
}
