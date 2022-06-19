package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ow */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ow.class */
public abstract class AbstractBinderC12811ow extends dvd implements AbstractC12812ox {
    public AbstractBinderC12811ow() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14288a(parcel.readString());
        } else if (i == 2) {
            mo14287b(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo14289a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
