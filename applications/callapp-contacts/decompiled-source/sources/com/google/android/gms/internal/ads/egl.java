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
            a();
        } else if (i == 2) {
            b();
        } else if (i == 3) {
            a((zzvh) dvc.a(parcel, zzvh.CREATOR));
        } else if (i != 4) {
            return false;
        } else {
            c();
        }
        parcel2.writeNoException();
        return true;
    }
}
