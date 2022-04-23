package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/p.class */
final class p {

    /* renamed from: a  reason: collision with root package name */
    final Messenger f22565a;

    /* renamed from: b  reason: collision with root package name */
    final zza f22566b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f22565a = new Messenger(iBinder);
            this.f22566b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f22566b = new zza(iBinder);
            this.f22565a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }
}
