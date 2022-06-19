package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
/* renamed from: com.google.firebase.iid.m */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/m.class */
final class C4986m {

    /* renamed from: a */
    private final Messenger f21162a;

    /* renamed from: b */
    private final C4958as f21163b;

    public C4986m(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f21162a = new Messenger(iBinder);
            this.f21163b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f21163b = new C4958as(iBinder);
            this.f21162a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    public final void m1924a(Message message) {
        if (this.f21162a != null) {
            this.f21162a.send(message);
        } else if (this.f21163b == null) {
            throw new IllegalStateException("Both messengers are null");
        } else {
            this.f21163b.m1956a(message);
        }
    }
}
