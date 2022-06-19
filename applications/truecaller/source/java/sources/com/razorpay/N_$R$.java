package com.razorpay;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/N_$R$.class */
public final class N_$R$ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ boolean f9408a;

    /* renamed from: b */
    private /* synthetic */ CheckoutPresenterImpl f9409b;

    public N_$R$(CheckoutPresenterImpl checkoutPresenterImpl, boolean z) {
        this.f9409b = checkoutPresenterImpl;
        this.f9408a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("granted", this.f9408a);
            this.f9409b.view.loadUrl(1, String.format("javascript: otpPermissionCallback(%s)", jSONObject.toString()));
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getLocalizedMessage());
        }
    }
}
