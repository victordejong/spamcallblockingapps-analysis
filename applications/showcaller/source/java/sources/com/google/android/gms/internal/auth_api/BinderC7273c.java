package com.google.android.gms.internal.auth_api;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.auth_api.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/c.class */
public class BinderC7273c extends Binder implements IInterface {
    public BinderC7273c(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    /* renamed from: c0 */
    protected boolean mo7820c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
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
        return mo7820c0(i, parcel, parcel2, i2);
    }
}
