package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* renamed from: com.google.android.gms.cloudmessaging.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/p.class */
final class C1540p {

    /* renamed from: a */
    private final Messenger f5790a;

    /* renamed from: b */
    private final zza f5791b;

    public C1540p(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f5790a = new Messenger(iBinder);
            this.f5791b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f5791b = new zza(iBinder);
            this.f5790a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    public final void m8481a(Message message) {
        Messenger messenger = this.f5790a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zza zzaVar = this.f5791b;
        if (zzaVar == null) {
            throw new IllegalStateException("Both messengers are null");
        }
        zzaVar.m8472b(message);
    }
}
