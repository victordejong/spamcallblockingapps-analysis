package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elq.class */
public abstract class elq extends dvd implements eln {
    public elq() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        it itVar;
        switch (i) {
            case 1:
                a();
                parcel2.writeNoException();
                return true;
            case 2:
                a(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                a(dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                a(b.a.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                a(parcel.readString(), b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float b2 = b();
                parcel2.writeNoException();
                parcel2.writeFloat(b2);
                return true;
            case 8:
                boolean c2 = c();
                parcel2.writeNoException();
                dvc.a(parcel2, c2);
                return true;
            case 9:
                String d2 = d();
                parcel2.writeNoException();
                parcel2.writeString(d2);
                return true;
            case 10:
                b(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                a(ml.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    itVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
                    itVar = queryLocalInterface instanceof it ? (it) queryLocalInterface : new iv(readStrongBinder);
                }
                a(itVar);
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzajm> e = e();
                parcel2.writeNoException();
                parcel2.writeTypedList(e);
                return true;
            case 14:
                a((zzaat) dvc.a(parcel, zzaat.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                f();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
