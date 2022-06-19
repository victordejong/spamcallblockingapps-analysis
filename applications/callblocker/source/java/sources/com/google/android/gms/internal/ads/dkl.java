package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkl.class */
public class dkl extends Binder implements IInterface {

    /* renamed from: a */
    private static dkm f14527a = null;

    public dkl(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        return false;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
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
        return z ? true : mo6844a(i, parcel, parcel2, i2);
    }
}
