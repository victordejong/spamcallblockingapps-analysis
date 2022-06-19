package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.oj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oj.class */
public abstract class AbstractBinderC12798oj extends dvd implements AbstractC12799ok {
    public AbstractBinderC12798oj() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            mo14300a();
        } else if (i == 3) {
            mo14298a(parcel.readString());
        } else if (i != 4) {
            return false;
        } else {
            mo14299a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
