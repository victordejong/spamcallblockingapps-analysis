package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xm.class */
public abstract class xm extends dvd implements xn {
    public xm() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a(parcel.readString(), parcel.readString());
        } else if (i == 2) {
            a(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            a(parcel.readString(), parcel.readString(), (Bundle) dvc.a(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
