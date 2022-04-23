package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fw.class */
public abstract class fw extends dvd implements ft {
    public fw() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        fs fsVar = null;
        elu eluVar = null;
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
                String k = k();
                parcel2.writeNoException();
                parcel2.writeString(k);
                return true;
            case 13:
                l();
                parcel2.writeNoException();
                return true;
            case 14:
                dj m = m();
                parcel2.writeNoException();
                dvc.a(parcel2, m);
                return true;
            case 15:
                a((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean b3 = b((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dvc.a(parcel2, b3);
                return true;
            case 17:
                c((Bundle) dvc.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                b n = n();
                parcel2.writeNoException();
                dvc.a(parcel2, n);
                return true;
            case 19:
                b o = o();
                parcel2.writeNoException();
                dvc.a(parcel2, o);
                return true;
            case 20:
                Bundle p = p();
                parcel2.writeNoException();
                dvc.b(parcel2, p);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    fsVar = queryLocalInterface instanceof fs ? (fs) queryLocalInterface : new fu(readStrongBinder);
                }
                a(fsVar);
                parcel2.writeNoException();
                return true;
            case 22:
                q();
                parcel2.writeNoException();
                return true;
            case 23:
                List r = r();
                parcel2.writeNoException();
                parcel2.writeList(r);
                return true;
            case 24:
                boolean s = s();
                parcel2.writeNoException();
                dvc.a(parcel2, s);
                return true;
            case 25:
                a(elx.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
                    eluVar = queryLocalInterface2 instanceof elu ? (elu) queryLocalInterface2 : new elw(readStrongBinder2);
                }
                a(eluVar);
                parcel2.writeNoException();
                return true;
            case 27:
                t();
                parcel2.writeNoException();
                return true;
            case 28:
                u();
                parcel2.writeNoException();
                return true;
            case 29:
                dq v = v();
                parcel2.writeNoException();
                dvc.a(parcel2, v);
                return true;
            case 30:
                boolean w = w();
                parcel2.writeNoException();
                dvc.a(parcel2, w);
                return true;
            case 31:
                emj x = x();
                parcel2.writeNoException();
                dvc.a(parcel2, x);
                return true;
            case 32:
                a(emh.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
