package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/v.class */
public class BinderC13719v extends Binder implements IInterface {
    public BinderC13719v(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo12113a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        throw null;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return mo12113a(i, parcel, parcel2);
    }
}
