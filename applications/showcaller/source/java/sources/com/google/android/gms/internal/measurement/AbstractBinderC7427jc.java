package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.measurement.jc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jc.class */
public abstract class AbstractBinderC7427jc extends BinderC7564u implements AbstractC7441kc {
    public AbstractBinderC7427jc() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.BinderC7564u
    /* renamed from: c0 */
    protected final boolean mo6466c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo7197C0((Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
