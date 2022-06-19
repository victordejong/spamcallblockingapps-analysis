package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ux */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ux.class */
public abstract class AbstractBinderC12974ux extends dvd implements AbstractC12975uy {
    public AbstractBinderC12974ux() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14073a();
        } else if (i == 2) {
            mo14072a(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            mo14071a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
