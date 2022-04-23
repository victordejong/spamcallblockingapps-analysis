package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emn.class */
public abstract class emn extends dvd implements emk {
    public emn() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static emk a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return queryLocalInterface instanceof emk ? (emk) queryLocalInterface : new emm(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        emp empVar;
        switch (i) {
            case 1:
                a();
                parcel2.writeNoException();
                return true;
            case 2:
                b();
                parcel2.writeNoException();
                return true;
            case 3:
                a(dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean d2 = d();
                parcel2.writeNoException();
                dvc.a(parcel2, d2);
                return true;
            case 5:
                int e = e();
                parcel2.writeNoException();
                parcel2.writeInt(e);
                return true;
            case 6:
                float f = f();
                parcel2.writeNoException();
                parcel2.writeFloat(f);
                return true;
            case 7:
                float g = g();
                parcel2.writeNoException();
                parcel2.writeFloat(g);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    empVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    empVar = queryLocalInterface instanceof emp ? (emp) queryLocalInterface : new emq(readStrongBinder);
                }
                a(empVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float i3 = i();
                parcel2.writeNoException();
                parcel2.writeFloat(i3);
                return true;
            case 10:
                boolean j = j();
                parcel2.writeNoException();
                dvc.a(parcel2, j);
                return true;
            case 11:
                emp h = h();
                parcel2.writeNoException();
                dvc.a(parcel2, h);
                return true;
            case 12:
                boolean k = k();
                parcel2.writeNoException();
                dvc.a(parcel2, k);
                return true;
            case 13:
                c();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
