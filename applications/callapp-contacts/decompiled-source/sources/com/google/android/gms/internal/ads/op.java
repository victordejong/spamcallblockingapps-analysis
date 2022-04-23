package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/op.class */
public abstract class op extends dvd implements oq {
    public op() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            a();
        } else if (i == 3) {
            a(parcel.readString());
        } else if (i != 4) {
            return false;
        } else {
            a((zzvh) dvc.a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
