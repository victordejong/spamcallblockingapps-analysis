package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ell.class */
public abstract class ell extends dvd implements elm {
    public ell() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14807a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        } else if (i == 2) {
            mo14808a();
        } else if (i == 3) {
            mo14806b();
        } else if (i != 4) {
            return false;
        } else {
            mo14805c();
        }
        parcel2.writeNoException();
        return true;
    }
}
