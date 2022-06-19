package com.google.android.gms.cloudmessaging;

import android.os.IInterface;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/IMessengerCompat.class */
public interface IMessengerCompat extends IInterface {
    public static final String DESCRIPTOR = "com.google.android.gms.iid.IMessengerCompat";
    public static final int TRANSACTION_SEND = 1;

    void send(Message message);
}
