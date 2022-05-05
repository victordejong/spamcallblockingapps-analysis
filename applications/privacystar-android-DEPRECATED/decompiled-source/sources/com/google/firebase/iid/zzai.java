package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzai.class */
final class zzai {
    private final Messenger zzag;
    private final zzl zzce;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzai(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.zzag = new Messenger(iBinder);
            this.zzce = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.zzce = new zzl(iBinder);
            this.zzag = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void send(Message message) throws RemoteException {
        if (this.zzag != null) {
            this.zzag.send(message);
        } else if (this.zzce != null) {
            this.zzce.send(message);
        } else {
            throw new IllegalStateException("Both messengers are null");
        }
    }
}
