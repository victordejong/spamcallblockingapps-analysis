package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dy.class */
public abstract class dy extends dvd implements dv {
    public dy() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static dv a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return queryLocalInterface instanceof dv ? (dv) queryLocalInterface : new dx(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        dq dqVar;
        switch (i) {
            case 1:
                a(parcel.readString(), b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                b a2 = a(parcel.readString());
                parcel2.writeNoException();
                dvc.a(parcel2, a2);
                return true;
            case 3:
                a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                a();
                parcel2.writeNoException();
                return true;
            case 5:
                a(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 6:
                b(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                c(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    dqVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    dqVar = queryLocalInterface instanceof dq ? (dq) queryLocalInterface : new ds(readStrongBinder);
                }
                a(dqVar);
                parcel2.writeNoException();
                return true;
            case 9:
                d(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
