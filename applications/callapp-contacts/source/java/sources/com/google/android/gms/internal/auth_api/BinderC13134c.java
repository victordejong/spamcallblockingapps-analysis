package com.google.android.gms.internal.auth_api;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.auth-api.e;
/* renamed from: com.google.android.gms.internal.auth_api.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/c.class */
public class BinderC13134c extends Binder implements IInterface {

    /* renamed from: a */
    private static e f50255a;

    public BinderC13134c(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo13612a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
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
        return mo13612a(i, parcel, parcel2);
    }
}
