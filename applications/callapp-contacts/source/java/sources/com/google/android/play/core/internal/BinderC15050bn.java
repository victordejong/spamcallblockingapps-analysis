package com.google.android.play.core.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.bn */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bn.class */
public class BinderC15050bn extends Binder implements IInterface {
    public BinderC15050bn(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo9515a(int i, Parcel parcel) throws RemoteException {
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
        return mo9515a(i, parcel);
    }
}
