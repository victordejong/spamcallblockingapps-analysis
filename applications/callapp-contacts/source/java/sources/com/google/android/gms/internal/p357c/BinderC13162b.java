package com.google.android.gms.internal.p357c;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.c.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/c/b.class */
public class BinderC13162b extends Binder implements IInterface {
    public BinderC13162b(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo13590a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        return false;
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
        return mo13590a(i, parcel, parcel2);
    }
}
