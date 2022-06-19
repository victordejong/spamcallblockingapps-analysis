package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.as */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/as.class */
public class BinderC3803as extends Binder implements IInterface {

    /* renamed from: a */
    private static AbstractC3860cu f17843a = null;

    public BinderC3803as(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo4706a(int i, Parcel parcel, Parcel parcel2, int i2) {
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
        return z ? true : mo4706a(i, parcel, parcel2, i2);
    }
}
