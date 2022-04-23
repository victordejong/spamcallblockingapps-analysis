package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ml.class */
public abstract class ml extends dvd implements mm {
    public ml() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static mm a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof mm ? (mm) queryLocalInterface : new mo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mn a2 = a(parcel.readString());
            parcel2.writeNoException();
            dvc.a(parcel2, a2);
            return true;
        } else if (i == 2) {
            boolean b2 = b(parcel.readString());
            parcel2.writeNoException();
            dvc.a(parcel2, b2);
            return true;
        } else if (i == 3) {
            os d2 = d(parcel.readString());
            parcel2.writeNoException();
            dvc.a(parcel2, d2);
            return true;
        } else if (i != 4) {
            return false;
        } else {
            boolean c2 = c(parcel.readString());
            parcel2.writeNoException();
            dvc.a(parcel2, c2);
            return true;
        }
    }
}
