package com.google.android.gms.internal.location;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.location.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/q.class */
public class BinderC13342q extends Binder implements IInterface {
    public BinderC13342q(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo12262a(int i, Parcel parcel) throws RemoteException {
        throw null;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return mo12262a(i, parcel);
    }
}
