package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* renamed from: com.google.android.gms.cloudmessaging.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/p.class */
final class C5970p {

    /* renamed from: a */
    private final Messenger f19126a;

    /* renamed from: b */
    private final zza f19127b;

    public C5970p(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f19126a = new Messenger(iBinder);
            this.f19127b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f19127b = new zza(iBinder);
            this.f19126a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    public final void m17516a(Message message) {
        Messenger messenger = this.f19126a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zza zzaVar = this.f19127b;
        if (zzaVar == null) {
            throw new IllegalStateException("Both messengers are null");
        }
        zzaVar.m17507b(message);
    }
}
