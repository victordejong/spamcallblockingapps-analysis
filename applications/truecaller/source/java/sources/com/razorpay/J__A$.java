package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/J__A$.class */
public final class J__A$ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ CheckoutPresenterImpl f9393a;

    public J__A$(CheckoutPresenterImpl checkoutPresenterImpl) {
        this.f9393a = checkoutPresenterImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9393a.helpersReset();
        this.f9393a.loadForm("");
    }
}
