package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ega.class */
public abstract class ega extends dvd implements egb {
    public ega() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        egh eghVar = null;
        egi egiVar = null;
        switch (i) {
            case 2:
                ekw a2 = a();
                parcel2.writeNoException();
                dvc.a(parcel2, a2);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    eghVar = queryLocalInterface instanceof egh ? (egh) queryLocalInterface : new egj(readStrongBinder);
                }
                a(eghVar);
                parcel2.writeNoException();
                return true;
            case 4:
                b a3 = b.a.a(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    egiVar = queryLocalInterface2 instanceof egi ? (egi) queryLocalInterface2 : new egk(readStrongBinder2);
                }
                a(a3, egiVar);
                parcel2.writeNoException();
                return true;
            case 5:
                emj b2 = b();
                parcel2.writeNoException();
                dvc.a(parcel2, b2);
                return true;
            case 6:
                a(dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            case 7:
                a(emh.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
