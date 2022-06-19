package com.google.android.gms.internal.p135b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.b.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/b/c.class */
public class BinderC3700c extends Binder implements IInterface {

    /* renamed from: a */
    private static AbstractC3702e f17766a = null;

    public BinderC3700c(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo6536a(int i, Parcel parcel, Parcel parcel2, int i2) {
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
        return z ? true : mo6536a(i, parcel, parcel2, i2);
    }
}
