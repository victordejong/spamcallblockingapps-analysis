package com.google.android.gms.internal.p138e;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.e.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/a.class */
public class BinderC3719a extends Binder implements IInterface {

    /* renamed from: a */
    private static AbstractC3721c f17779a = null;

    public BinderC3719a(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo6522a(int i, Parcel parcel, Parcel parcel2, int i2) {
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
        return z ? true : mo6522a(i, parcel, parcel2, i2);
    }
}
