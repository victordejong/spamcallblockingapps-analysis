package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.mc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/mc.class */
public abstract class AbstractBinderC7469mc extends BinderC7564u implements AbstractC7483nc {
    public AbstractBinderC7469mc() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.BinderC7564u
    /* renamed from: c0 */
    protected final boolean mo6466c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo7065A1(parcel.readString(), parcel.readString(), (Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int mo7064a = mo7064a();
            parcel2.writeNoException();
            parcel2.writeInt(mo7064a);
            return true;
        }
    }
}
