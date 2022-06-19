package com.android.internal.telephony;

import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/android/internal/telephony/ITelephony.class */
public interface ITelephony extends IInterface {
    void answerRingingCall();

    void cancelMissedCallsNotification();

    boolean endCall();

    void silenceRinger();
}
