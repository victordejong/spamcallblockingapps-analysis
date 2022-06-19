package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/PaymentResultListener.class */
public interface PaymentResultListener {
    void onPaymentError(int i, String str);

    void onPaymentSuccess(String str);
}
