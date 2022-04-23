package com.google.android.gms.internal.auth_api;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.auth-api.e;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/c.class */
public class c extends Binder implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private static e f28657a;

    public c(String str) {
        attachInterface(this, str);
    }

    protected boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        return false;
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
        return a(i, parcel, parcel2);
    }
}
