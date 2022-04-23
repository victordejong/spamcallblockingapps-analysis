package com.google.android.gms.iid;

import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzy.class */
final class zzy {

    /* renamed from: a */
    final Messenger f7809a;

    /* renamed from: b */
    final MessengerCompat f7810b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzy(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f7809a = new Messenger(iBinder);
            this.f7810b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f7810b = new MessengerCompat(iBinder);
            this.f7809a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }
}
