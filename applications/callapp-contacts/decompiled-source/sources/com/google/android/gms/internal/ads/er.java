package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/er.class */
public abstract class er extends dvd implements eo {
    public er() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static eo a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof eo ? (eo) queryLocalInterface : new eq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String a2 = a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(a2);
                return true;
            case 2:
                dr b2 = b(parcel.readString());
                parcel2.writeNoException();
                dvc.a(parcel2, b2);
                return true;
            case 3:
                List<String> a3 = a();
                parcel2.writeNoException();
                parcel2.writeStringList(a3);
                return true;
            case 4:
                String b3 = b();
                parcel2.writeNoException();
                parcel2.writeString(b3);
                return true;
            case 5:
                c(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                c();
                parcel2.writeNoException();
                return true;
            case 7:
                emk d2 = d();
                parcel2.writeNoException();
                dvc.a(parcel2, d2);
                return true;
            case 8:
                e();
                parcel2.writeNoException();
                return true;
            case 9:
                b f = f();
                parcel2.writeNoException();
                dvc.a(parcel2, f);
                return true;
            case 10:
                boolean a4 = a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.a(parcel2, a4);
                return true;
            case 11:
                b g = g();
                parcel2.writeNoException();
                dvc.a(parcel2, g);
                return true;
            case 12:
                boolean h = h();
                parcel2.writeNoException();
                dvc.a(parcel2, h);
                return true;
            case 13:
                boolean i3 = i();
                parcel2.writeNoException();
                dvc.a(parcel2, i3);
                return true;
            case 14:
                b(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                j();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
