package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afj.class */
public abstract class afj extends dvd implements afl {
    public afj() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                a((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle b2 = b((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dvc.b(parcel2, b2);
                return true;
            case 3:
                a(parcel.readString(), parcel.readString(), (Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                a(parcel.readString(), parcel.readString(), b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map a2 = a(parcel.readString(), parcel.readString(), dvc.a(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(a2);
                return true;
            case 6:
                int a3 = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a3);
                return true;
            case 7:
                c((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                b(parcel.readString(), parcel.readString(), (Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List a4 = a(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(a4);
                return true;
            case 10:
                String a5 = a();
                parcel2.writeNoException();
                parcel2.writeString(a5);
                return true;
            case 11:
                String b3 = b();
                parcel2.writeNoException();
                parcel2.writeString(b3);
                return true;
            case 12:
                long c2 = c();
                parcel2.writeNoException();
                parcel2.writeLong(c2);
                return true;
            case 13:
                b(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                c(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 15:
                a(b.a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                String d2 = d();
                parcel2.writeNoException();
                parcel2.writeString(d2);
                return true;
            case 17:
                String e = e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 18:
                String f = f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 19:
                d((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
