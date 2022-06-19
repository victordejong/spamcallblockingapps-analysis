package com.pubmatic.sdk.webrendering.p021ui;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.KeyEvent;
import android.webkit.WebView;
import com.pubmatic.sdk.common.log.PMLog;
/* renamed from: com.pubmatic.sdk.webrendering.ui.POBWebView */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBWebView.class */
public class POBWebView extends WebView {

    /* renamed from: a */
    private WebViewBackPress f1242a;

    /* renamed from: b */
    private OnFocusChangedListener f1243b;

    /* renamed from: c */
    private MutableContextWrapper f1244c;

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBWebView$OnFocusChangedListener */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener.class */
    public interface OnFocusChangedListener {
        void onFocusChanged(boolean z);
    }

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBWebView$WebViewBackPress */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress.class */
    public interface WebViewBackPress {
        void onBackPress();
    }

    protected POBWebView(Context context) {
        super(context);
        setBackgroundColor(0);
    }

    public static POBWebView createInstance(Context context) {
        POBWebView pOBWebView;
        try {
            MutableContextWrapper mutableContextWrapper = new MutableContextWrapper(context.getApplicationContext());
            pOBWebView = new POBWebView(mutableContextWrapper);
            try {
                pOBWebView.f1244c = mutableContextWrapper;
            } catch (Exception e) {
                PMLog.error("PMWebView", "Unable to instantiate Web View", new Object[0]);
                return pOBWebView;
            }
        } catch (Exception e2) {
            pOBWebView = null;
        }
        return pOBWebView;
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            if (i != 4) {
                PMLog.debug("PMWebView", "default case, keyCode:" + i, new Object[0]);
            } else {
                WebViewBackPress webViewBackPress = this.f1242a;
                if (webViewBackPress != null) {
                    webViewBackPress.onBackPress();
                    return true;
                }
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        PMLog.debug("PMWebView", "hasWindowFocus :" + z, new Object[0]);
        OnFocusChangedListener onFocusChangedListener = this.f1243b;
        if (onFocusChangedListener != null) {
            onFocusChangedListener.onFocusChanged(z);
        }
    }

    public void setBaseContext(Context context) {
        this.f1244c.setBaseContext(context);
    }

    public void setOnfocusChangedListener(OnFocusChangedListener onFocusChangedListener) {
        this.f1243b = onFocusChangedListener;
    }

    public void setWebViewBackPress(WebViewBackPress webViewBackPress) {
        this.f1242a = webViewBackPress;
    }
}
