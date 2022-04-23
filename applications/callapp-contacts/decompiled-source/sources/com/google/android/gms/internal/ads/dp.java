package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dp.class */
public abstract class dp extends dvd implements dq {
    public dp() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    public static dq a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
        return queryLocalInterface instanceof dq ? (dq) queryLocalInterface : new ds(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        ff ffVar;
        switch (i) {
            case 2:
                float a2 = a();
                parcel2.writeNoException();
                parcel2.writeFloat(a2);
                return true;
            case 3:
                a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                b b2 = b();
                parcel2.writeNoException();
                dvc.a(parcel2, b2);
                return true;
            case 5:
                float c2 = c();
                parcel2.writeNoException();
                parcel2.writeFloat(c2);
                return true;
            case 6:
                float d2 = d();
                parcel2.writeNoException();
                parcel2.writeFloat(d2);
                return true;
            case 7:
                emk e = e();
                parcel2.writeNoException();
                dvc.a(parcel2, e);
                return true;
            case 8:
                boolean f = f();
                parcel2.writeNoException();
                dvc.a(parcel2, f);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    ffVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    ffVar = queryLocalInterface instanceof ff ? (ff) queryLocalInterface : new fi(readStrongBinder);
                }
                a(ffVar);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
