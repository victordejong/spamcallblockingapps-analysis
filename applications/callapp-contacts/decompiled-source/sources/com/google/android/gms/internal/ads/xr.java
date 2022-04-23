package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xr.class */
public abstract class xr extends dvd implements xo {
    public xr() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    public static xo a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return queryLocalInterface instanceof xo ? (xo) queryLocalInterface : new xq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        xn xnVar;
        switch (i) {
            case 1:
                b a2 = b.a.a(parcel.readStrongBinder());
                zzazi zzaziVar = (zzazi) dvc.a(parcel, zzazi.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    xnVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    xnVar = queryLocalInterface instanceof xn ? (xn) queryLocalInterface : new xp(readStrongBinder);
                }
                a(a2, zzaziVar, xnVar);
                parcel2.writeNoException();
                return true;
            case 2:
                a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                b a3 = a(b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.a(parcel2, a3);
                return true;
            case 4:
                b b2 = b(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.a(parcel2, b2);
                return true;
            case 5:
                a(parcel.createTypedArrayList(Uri.CREATOR), b.a.a(parcel.readStrongBinder()), rs.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                b(parcel.createTypedArrayList(Uri.CREATOR), b.a.a(parcel.readStrongBinder()), rs.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                a((zzatj) dvc.a(parcel, zzatj.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
