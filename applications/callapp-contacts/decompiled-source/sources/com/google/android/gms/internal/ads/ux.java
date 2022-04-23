package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ux.class */
public abstract class ux extends dvd implements uy {
    public ux() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a();
        } else if (i == 2) {
            a(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            a((zzvh) dvc.a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
