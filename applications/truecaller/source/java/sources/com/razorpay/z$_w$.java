package com.razorpay;

import com.razorpay.CheckoutBridge;
/* loaded from: classes3-dex2jar.jar:com/razorpay/z$_w$.class */
public final class z$_w$ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ int f9478a;

    /* renamed from: b */
    private /* synthetic */ CheckoutBridge.WebViewSafeCheckCallback f9479b;

    /* renamed from: c */
    private /* synthetic */ CheckoutPresenterImpl f9480c;

    public z$_w$(CheckoutPresenterImpl checkoutPresenterImpl, int i, CheckoutBridge.WebViewSafeCheckCallback webViewSafeCheckCallback) {
        this.f9480c = checkoutPresenterImpl;
        this.f9478a = i;
        this.f9479b = webViewSafeCheckCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CheckoutPresenterImpl.access$700(this.f9480c, this.f9478a, this.f9479b);
    }
}
