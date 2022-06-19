package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/d__w$.class */
public final class d__w$ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ CheckoutPresenterImpl f9449a;

    public d__w$(CheckoutPresenterImpl checkoutPresenterImpl) {
        this.f9449a = checkoutPresenterImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CheckoutPresenterImpl checkoutPresenterImpl = this.f9449a;
        checkoutPresenterImpl.view.loadUrl(1, CheckoutPresenterImpl.access$300(checkoutPresenterImpl));
        CheckoutPresenterImpl checkoutPresenterImpl2 = this.f9449a;
        checkoutPresenterImpl2.view.loadUrl(1, String.format("javascript: CheckoutBridge.sendAnalyticsData({data: %s})", AnalyticsUtil.getAnalyticsDataForCheckout(checkoutPresenterImpl2.activity).toString()));
    }
}
