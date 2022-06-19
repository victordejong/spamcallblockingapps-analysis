package com.razorpay;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/O_$v$.class */
public final class O_$v$ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ String f9414a;

    /* renamed from: b */
    private /* synthetic */ CheckoutPresenterImpl f9415b;

    public O_$v$(CheckoutPresenterImpl checkoutPresenterImpl, String str) {
        this.f9415b = checkoutPresenterImpl;
        this.f9414a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9415b.onComplete(new JSONObject(this.f9414a));
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
            this.f9415b.destroyActivity(0, e.getMessage());
        }
    }
}
