package com.razorpay;

import android.content.IntentFilter;
import android.os.CountDownTimer;
/* loaded from: classes3-dex2jar.jar:com/razorpay/O$_M$.class */
public final class O$_M$ extends CountDownTimer {

    /* renamed from: a */
    private /* synthetic */ CheckoutPresenterImpl f9410a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O$_M$(CheckoutPresenterImpl checkoutPresenterImpl, long j, long j2) {
        super(2000L, 1000L);
        this.f9410a = checkoutPresenterImpl;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        try {
            if (!CheckoutPresenterImpl.access$400(this.f9410a).m38519s()) {
                CheckoutPresenterImpl.access$600(this.f9410a);
                return;
            }
            IntentFilter intentFilter = new IntentFilter("com.google.android.gms.auth.api.phone.SMS_RETRIEVED");
            CheckoutPresenterImpl checkoutPresenterImpl = this.f9410a;
            checkoutPresenterImpl.activity.registerReceiver(CheckoutPresenterImpl.access$500(checkoutPresenterImpl), intentFilter, "com.google.android.gms.auth.api.phone.permission.SEND", null);
        } catch (AbstractMethodError e) {
            AnalyticsUtil.reportError(e, "error", e.getMessage());
            CheckoutPresenterImpl.access$600(this.f9410a);
        } catch (Exception e2) {
            AnalyticsUtil.reportError(e2, "error", e2.getMessage());
            CheckoutPresenterImpl.access$600(this.f9410a);
        }
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j) {
    }
}
