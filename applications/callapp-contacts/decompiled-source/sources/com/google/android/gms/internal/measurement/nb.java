package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/nb.class */
public abstract class nb extends v implements nc {
    public nb() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.v
    protected final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        a((Bundle) as.a(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
