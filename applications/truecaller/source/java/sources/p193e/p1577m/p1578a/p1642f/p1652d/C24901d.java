package p193e.p1577m.p1578a.p1642f.p1652d;

import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import com.google.android.gms.cloudmessaging.zzd;
/* renamed from: e.m.a.f.d.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/d/d.class */
public final class C24901d {

    /* renamed from: a */
    public final Messenger f69798a;

    /* renamed from: b */
    public final zzd f69799b;

    public C24901d(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f69798a = new Messenger(iBinder);
            this.f69799b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f69799b = new zzd(iBinder);
            this.f69798a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            if (valueOf.length() != 0) {
                "Invalid interface descriptor: ".concat(valueOf);
            } else {
                new String("Invalid interface descriptor: ");
            }
            throw new RemoteException();
        }
    }
}
