package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.op */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/op.class */
public abstract class AbstractBinderC12804op extends dvd implements AbstractC12805oq {
    public AbstractBinderC12804op() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            mo14294a();
        } else if (i == 3) {
            mo14292a(parcel.readString());
        } else if (i != 4) {
            return false;
        } else {
            mo14293a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
