package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ej.class */
public abstract class ej extends dvd implements eg {
    public ej() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                b a2 = a();
                parcel2.writeNoException();
                dvc.a(parcel2, a2);
                return true;
            case 3:
                String b2 = b();
                parcel2.writeNoException();
                parcel2.writeString(b2);
                return true;
            case 4:
                List c2 = c();
                parcel2.writeNoException();
                parcel2.writeList(c2);
                return true;
            case 5:
                String d2 = d();
                parcel2.writeNoException();
                parcel2.writeString(d2);
                return true;
            case 6:
                dr e = e();
                parcel2.writeNoException();
                dvc.a(parcel2, e);
                return true;
            case 7:
                String f = f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 8:
                double g = g();
                parcel2.writeNoException();
                parcel2.writeDouble(g);
                return true;
            case 9:
                String h = h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 10:
                String i3 = i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                return true;
            case 11:
                Bundle j = j();
                parcel2.writeNoException();
                dvc.b(parcel2, j);
                return true;
            case 12:
                k();
                parcel2.writeNoException();
                return true;
            case 13:
                emk l = l();
                parcel2.writeNoException();
                dvc.a(parcel2, l);
                return true;
            case 14:
                a((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean b3 = b((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dvc.a(parcel2, b3);
                return true;
            case 16:
                c((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                dj m = m();
                parcel2.writeNoException();
                dvc.a(parcel2, m);
                return true;
            case 18:
                b n = n();
                parcel2.writeNoException();
                dvc.a(parcel2, n);
                return true;
            case 19:
                String o = o();
                parcel2.writeNoException();
                parcel2.writeString(o);
                return true;
            default:
                return false;
        }
    }
}
