package com.razorpay;

import proguard.annotation.Keep;
import proguard.annotation.KeepClassMembers;
@Keep
@KeepClassMembers
/* loaded from: classes3-dex2jar.jar:com/razorpay/RzpInternalCallback.class */
public interface RzpInternalCallback {
    void onPaymentError(int i, String str);

    void onPaymentSuccess(String str);
}
