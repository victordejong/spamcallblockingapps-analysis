package com.razorpay;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/G$_X_.class */
public final class G$_X_ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ JSONObject f9389a;

    /* renamed from: b */
    private /* synthetic */ CheckoutPresenterImpl f9390b;

    public G$_X_(CheckoutPresenterImpl checkoutPresenterImpl, JSONObject jSONObject) {
        this.f9390b = checkoutPresenterImpl;
        this.f9389a = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CheckoutPresenterImpl.access$100(this.f9390b, this.f9389a.toString());
    }
}
