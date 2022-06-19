package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.xm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xm.class */
public abstract class AbstractBinderC13046xm extends dvd implements AbstractC13047xn {
    public AbstractBinderC13046xm() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14001a(parcel.readString(), parcel.readString());
        } else if (i == 2) {
            mo14002a(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo14000a(parcel.readString(), parcel.readString(), (Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
