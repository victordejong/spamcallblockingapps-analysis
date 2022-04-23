package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/na.class */
public abstract class na extends dvd implements nb {
    public na() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String a2 = a();
                parcel2.writeNoException();
                parcel2.writeString(a2);
                return true;
            case 3:
                List b2 = b();
                parcel2.writeNoException();
                parcel2.writeList(b2);
                return true;
            case 4:
                String c2 = c();
                parcel2.writeNoException();
                parcel2.writeString(c2);
                return true;
            case 5:
                dr d2 = d();
                parcel2.writeNoException();
                dvc.a(parcel2, d2);
                return true;
            case 6:
                String e = e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 7:
                double f = f();
                parcel2.writeNoException();
                parcel2.writeDouble(f);
                return true;
            case 8:
                String g = g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 9:
                String h = h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 10:
                i();
                parcel2.writeNoException();
                return true;
            case 11:
                a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                b(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean j = j();
                parcel2.writeNoException();
                dvc.a(parcel2, j);
                return true;
            case 14:
                boolean k = k();
                parcel2.writeNoException();
                dvc.a(parcel2, k);
                return true;
            case 15:
                Bundle l = l();
                parcel2.writeNoException();
                dvc.b(parcel2, l);
                return true;
            case 16:
                c(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 17:
                emk m = m();
                parcel2.writeNoException();
                dvc.a(parcel2, m);
                return true;
            case 18:
                b n = n();
                parcel2.writeNoException();
                dvc.a(parcel2, n);
                return true;
            case 19:
                dj o = o();
                parcel2.writeNoException();
                dvc.a(parcel2, o);
                return true;
            case 20:
                b p = p();
                parcel2.writeNoException();
                dvc.a(parcel2, p);
                return true;
            case 21:
                b q = q();
                parcel2.writeNoException();
                dvc.a(parcel2, q);
                return true;
            case 22:
                a(b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
