package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.nb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/nb.class */
public abstract class AbstractBinderC13705nb extends BinderC13719v implements AbstractC13706nc {
    public AbstractBinderC13705nb() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.BinderC13719v
    /* renamed from: a */
    protected final boolean mo12113a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            mo12294a((Bundle) C13371as.m13248a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
