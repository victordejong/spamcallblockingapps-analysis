package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egl.class */
public abstract class egl extends dvd implements egi {
    public egl() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo15070a();
        } else if (i == 2) {
            mo15068b();
        } else if (i == 3) {
            mo15069a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        } else if (i != 4) {
            return false;
        } else {
            mo15067c();
        }
        parcel2.writeNoException();
        return true;
    }
}
