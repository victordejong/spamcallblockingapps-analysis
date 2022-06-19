package com.google.android.gms.internal.wearable;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.wearable.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/wearable/b.class */
public class BinderC13725b extends Binder implements IInterface {

    /* renamed from: a */
    private static AbstractC13727d f51082a;

    public BinderC13725b(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo11417a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
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
        return mo11417a(i, parcel, parcel2);
    }
}
