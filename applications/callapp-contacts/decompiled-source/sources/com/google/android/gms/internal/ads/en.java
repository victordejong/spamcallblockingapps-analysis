package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/en.class */
public abstract class en extends dvd implements ek {
    public en() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
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
                String g = g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 9:
                Bundle h = h();
                parcel2.writeNoException();
                dvc.b(parcel2, h);
                return true;
            case 10:
                i();
                parcel2.writeNoException();
                return true;
            case 11:
                emk j = j();
                parcel2.writeNoException();
                dvc.a(parcel2, j);
                return true;
            case 12:
                a((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean b3 = b((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dvc.a(parcel2, b3);
                return true;
            case 14:
                c((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                dj k = k();
                parcel2.writeNoException();
                dvc.a(parcel2, k);
                return true;
            case 16:
                b l = l();
                parcel2.writeNoException();
                dvc.a(parcel2, l);
                return true;
            case 17:
                String m = m();
                parcel2.writeNoException();
                parcel2.writeString(m);
                return true;
            default:
                return false;
        }
    }
}
