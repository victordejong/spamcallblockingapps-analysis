package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uu.class */
public abstract class uu extends dvd implements ur {
    public uu() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        ul ulVar;
        switch (i) {
            case 1:
                a();
                break;
            case 2:
                b();
                break;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    ulVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    ulVar = queryLocalInterface instanceof ul ? (ul) queryLocalInterface : new un(readStrongBinder);
                }
                a(ulVar);
                break;
            case 4:
                a(parcel.readInt());
                break;
            case 5:
                a((zzvh) dvc.a(parcel, zzvh.CREATOR));
                break;
            case 6:
                c();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
