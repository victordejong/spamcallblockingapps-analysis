package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/L_$k$.class */
public final class L_$k$ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ String f9398a;

    /* renamed from: b */
    private /* synthetic */ int f9399b;

    /* renamed from: c */
    private /* synthetic */ CheckoutPresenterImpl f9400c;

    public L_$k$(CheckoutPresenterImpl checkoutPresenterImpl, String str, int i) {
        this.f9400c = checkoutPresenterImpl;
        this.f9398a = str;
        this.f9399b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9400c.view.showToast(this.f9398a, this.f9399b);
    }
}
