package com.razorpay;
/* loaded from: classes3-dex2jar.jar:com/razorpay/PaymentResultWithDataListener.class */
public interface PaymentResultWithDataListener {
    void onPaymentError(int i, String str, PaymentData paymentData);

    void onPaymentSuccess(String str, PaymentData paymentData);
}
