package com.razorpay;

import android.view.WindowManager;
/* loaded from: classes3-dex2jar.jar:com/razorpay/E$_q$.class */
public final class E$_q$ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ int f9382a;

    /* renamed from: b */
    private /* synthetic */ int f9383b;

    /* renamed from: c */
    private /* synthetic */ CheckoutPresenterImpl f9384c;

    public E$_q$(CheckoutPresenterImpl checkoutPresenterImpl, int i, int i2) {
        this.f9384c = checkoutPresenterImpl;
        this.f9382a = i;
        this.f9383b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WindowManager.LayoutParams attributes = this.f9384c.activity.getWindow().getAttributes();
        attributes.height = G_$8_.m36099a(this.f9384c.activity, this.f9382a);
        attributes.width = G_$8_.m36099a(this.f9384c.activity, this.f9383b);
        this.f9384c.activity.getWindow().setAttributes(attributes);
    }
}
