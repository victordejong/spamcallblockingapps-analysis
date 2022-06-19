package com.google.android.gms.internal.p137d;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.d.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/a.class */
public class BinderC3713a extends Binder implements IInterface {

    /* renamed from: a */
    private static AbstractC3715c f17774a = null;

    public BinderC3713a(String str) {
        attachInterface(this, str);
    }

    /* renamed from: a */
    protected boolean mo6528a(int i, Parcel parcel, Parcel parcel2, int i2) {
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
        return z ? true : mo6528a(i, parcel, parcel2, i2);
    }
}
