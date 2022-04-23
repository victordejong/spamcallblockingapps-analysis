package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ng.class */
public abstract class ng extends dvd implements nh {
    public ng() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
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
                emk j = j();
                parcel2.writeNoException();
                dvc.a(parcel2, j);
                return true;
            case 12:
                dj k = k();
                parcel2.writeNoException();
                dvc.a(parcel2, k);
                return true;
            case 13:
                b l = l();
                parcel2.writeNoException();
                dvc.a(parcel2, l);
                return true;
            case 14:
                b m = m();
                parcel2.writeNoException();
                dvc.a(parcel2, m);
                return true;
            case 15:
                b n = n();
                parcel2.writeNoException();
                dvc.a(parcel2, n);
                return true;
            case 16:
                Bundle o = o();
                parcel2.writeNoException();
                dvc.b(parcel2, o);
                return true;
            case 17:
                boolean p = p();
                parcel2.writeNoException();
                dvc.a(parcel2, p);
                return true;
            case 18:
                boolean q = q();
                parcel2.writeNoException();
                dvc.a(parcel2, q);
                return true;
            case 19:
                r();
                parcel2.writeNoException();
                return true;
            case 20:
                a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                a(b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                b(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 23:
                float s = s();
                parcel2.writeNoException();
                parcel2.writeFloat(s);
                return true;
            case 24:
                float t = t();
                parcel2.writeNoException();
                parcel2.writeFloat(t);
                return true;
            case 25:
                float u = u();
                parcel2.writeNoException();
                parcel2.writeFloat(u);
                return true;
            default:
                return false;
        }
    }
}
