package com.google.android.p311a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.a.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/a/b.class */
public class BinderC10606b extends Binder implements IInterface {
    public BinderC10606b(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        throw null;
    }
}
