package com.google.android.play.core.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.play.core.internal.x0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/x0.class */
public class BinderC8525x0 extends Binder implements IInterface {
    public BinderC8525x0(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    /* renamed from: c0 */
    protected boolean mo3422c0(int i, Parcel parcel) {
        throw null;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return mo3422c0(i, parcel);
    }
}
