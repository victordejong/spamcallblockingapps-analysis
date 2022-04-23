package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fr.class */
public abstract class fr extends dvd implements fs {
    public fr() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a(parcel.readString());
        } else if (i != 2) {
            return false;
        } else {
            a();
        }
        parcel2.writeNoException();
        return true;
    }
}
