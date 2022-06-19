package com.razorpay;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
/* renamed from: com.razorpay.g */
/* loaded from: classes3-dex2jar.jar:com/razorpay/g.class */
public final class C2734g extends WebChromeClient {

    /* renamed from: a */
    private CheckoutPresenter f9450a;

    public C2734g(CheckoutPresenter checkoutPresenter) {
        this.f9450a = checkoutPresenter;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        this.f9450a.onProgressChanges(2, i);
    }
}
