package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.k2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k2.class */
public class BinderC6649k2 extends Binder implements IInterface {
    public BinderC6649k2(String str) {
        attachInterface(this, str);
    }

    /* renamed from: D6 */
    protected boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        throw null;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return mo8198D6(i, parcel, parcel2, i2);
    }
}
