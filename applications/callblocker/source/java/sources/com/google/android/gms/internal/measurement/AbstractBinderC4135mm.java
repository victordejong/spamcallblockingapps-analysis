package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.mm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/mm.class */
public abstract class AbstractBinderC4135mm extends BinderC3803as implements AbstractC4132mj {
    public AbstractBinderC4135mm() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.BinderC3803as
    /* renamed from: a */
    protected final boolean mo4706a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        if (i == 1) {
            mo4950a((Bundle) C4146u.m4944a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
