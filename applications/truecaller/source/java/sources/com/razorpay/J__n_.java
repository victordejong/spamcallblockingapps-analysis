package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/J__n_.class */
public final class J__n_ implements Runnable {

    /* renamed from: a */
    private /* synthetic */ int f9394a;

    /* renamed from: b */
    private /* synthetic */ String f9395b;

    /* renamed from: c */
    private /* synthetic */ CheckoutPresenterImpl f9396c;

    public J__n_(CheckoutPresenterImpl checkoutPresenterImpl, int i, String str) {
        this.f9396c = checkoutPresenterImpl;
        this.f9394a = i;
        this.f9395b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f9394a;
        if (i == 1) {
            this.f9396c.view.loadUrl(1, String.format("javascript: handleRelay(%s)", this.f9395b));
        } else if (i != 2) {
        } else {
            this.f9396c.view.loadUrl(2, String.format("javascript: Magic.handleRelay(%s)", this.f9395b));
        }
    }
}
