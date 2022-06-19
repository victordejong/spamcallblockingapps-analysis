package com.android.internal.telephony;

import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/android/internal/telephony/ITelephony.class */
public interface ITelephony extends IInterface {
    void answerRingingCall() throws RemoteException;

    boolean endCall() throws RemoteException;

    void silenceRinger() throws RemoteException;
}
