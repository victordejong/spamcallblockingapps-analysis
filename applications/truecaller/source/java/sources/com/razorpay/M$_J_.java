package com.razorpay;

import android.webkit.JavascriptInterface;
/* loaded from: classes3-dex2jar.jar:com/razorpay/M$_J_.class */
public final class M$_J_ {

    /* renamed from: a */
    private CheckoutInteractor f9407a;

    public M$_J_(CheckoutInteractor checkoutInteractor) {
        this.f9407a = checkoutInteractor;
    }

    @JavascriptInterface
    public final void relay(String str) {
        this.f9407a.sendDataToWebView(1, str);
    }
}
