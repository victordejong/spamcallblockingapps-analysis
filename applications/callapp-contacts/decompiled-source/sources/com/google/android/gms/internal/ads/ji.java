package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ji.class */
public abstract class ji extends dvd implements jf {
    public ji() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        iz izVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                izVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
                izVar = queryLocalInterface instanceof iz ? (iz) queryLocalInterface : new jb(readStrongBinder);
            }
            a(izVar);
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
