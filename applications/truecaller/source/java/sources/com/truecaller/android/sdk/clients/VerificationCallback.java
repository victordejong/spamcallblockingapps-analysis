package com.truecaller.android.sdk.clients;

import com.truecaller.android.sdk.TrueException;
import p193e.p194a.p1221t.p1230b.p1231c.C20363h;
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/clients/VerificationCallback.class */
public interface VerificationCallback {
    public static final int TYPE_MISSED_CALL_INITIATED = 3;
    public static final int TYPE_MISSED_CALL_RECEIVED = 4;
    public static final int TYPE_OTP_INITIATED = 1;
    public static final int TYPE_OTP_RECEIVED = 2;
    public static final int TYPE_PROFILE_VERIFIED_BEFORE = 6;
    public static final int TYPE_VERIFICATION_COMPLETE = 5;

    void onRequestFailure(int i, TrueException trueException);

    void onRequestSuccess(int i, C20363h c20363h);
}
