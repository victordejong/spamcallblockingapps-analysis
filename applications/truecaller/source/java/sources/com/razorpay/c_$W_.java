package com.razorpay;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/razorpay/c_$W_.class */
public final class c_$W_ extends WebChromeClient {

    /* renamed from: a */
    private CheckoutPresenter f9446a;

    public c_$W_(CheckoutPresenter checkoutPresenter) {
        this.f9446a = checkoutPresenter;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.ERROR) {
            HashMap hashMap = new HashMap();
            hashMap.put("message", consoleMessage.message());
            hashMap.put("source_id", consoleMessage.sourceId());
            hashMap.put("line_number", String.valueOf(consoleMessage.lineNumber()));
            AnalyticsUtil.trackEvent(AnalyticsEvent.WEB_VIEW_JS_ERROR, hashMap);
            consoleMessage.message();
            return false;
        }
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        this.f9446a.onProgressChanges(1, i);
    }
}
