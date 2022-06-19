package com.razorpay;

import com.razorpay.H$;
/* loaded from: classes3-dex2jar.jar:com/razorpay/T_$Z$.class */
public final class T_$Z$ implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ CheckoutPresenterImpl f9423a;

    /* renamed from: b */
    private /* synthetic */ String f9424b;

    /* renamed from: c */
    private /* synthetic */ String f9425c;

    /* renamed from: d */
    private /* synthetic */ String f9426d;

    public T_$Z$(CheckoutPresenterImpl checkoutPresenterImpl, String str, String str2, String str3) {
        this.f9423a = checkoutPresenterImpl;
        this.f9424b = str;
        this.f9425c = str2;
        this.f9426d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CheckoutUtils.m36141a(this.f9423a.activity, this.f9424b, this.f9425c, this.f9426d, new H$.i_(this));
    }
}
