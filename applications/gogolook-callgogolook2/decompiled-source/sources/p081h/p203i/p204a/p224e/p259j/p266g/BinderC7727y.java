package p081h.p203i.p204a.p224e.p259j.p266g;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.g.y */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/y.class */
public class BinderC7727y extends Binder implements IInterface {
    public BinderC7727y(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    public boolean mo19673a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        throw null;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean z;
        if (i > 16777215) {
            z = super.onTransact(i, parcel, parcel2, i2);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            z = false;
        }
        if (z) {
            return true;
        }
        return mo19673a(i, parcel, parcel2, i2);
    }
}
