package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* renamed from: com.google.android.gms.cloudmessaging.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/p.class */
final class C11793p {

    /* renamed from: a */
    final Messenger f39130a;

    /* renamed from: b */
    final zza f39131b;

    public C11793p(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f39130a = new Messenger(iBinder);
            this.f39131b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f39131b = new zza(iBinder);
            this.f39130a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }
}
