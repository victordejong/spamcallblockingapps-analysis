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
        egb egbVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                egbVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                egbVar = queryLocalInterface instanceof egb ? (egb) queryLocalInterface : new egd(readStrongBinder);
            }
            a(egbVar);
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
