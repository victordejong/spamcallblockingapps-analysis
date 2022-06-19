package com.razorpay;

import proguard.annotation.Keep;
import proguard.annotation.KeepClassMembers;
@Keep
@KeepClassMembers
/* loaded from: classes3-dex2jar.jar:com/razorpay/Callback.class */
public interface Callback {
    void run(ResponseObject responseObject);
}
