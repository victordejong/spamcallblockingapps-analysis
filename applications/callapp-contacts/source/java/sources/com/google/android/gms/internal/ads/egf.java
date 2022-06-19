package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egf.class */
public abstract class egf extends dvd implements egc {
    public egf() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        egd egdVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                egdVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                egdVar = queryLocalInterface instanceof egb ? (egb) queryLocalInterface : new egd(readStrongBinder);
            }
            mo15073a(egdVar);
        } else if (i == 2) {
            mo15074a(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            mo15072a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
