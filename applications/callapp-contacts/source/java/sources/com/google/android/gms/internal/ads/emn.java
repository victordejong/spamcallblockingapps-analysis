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

    /* renamed from: a */
    public static emk m14780a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return queryLocalInterface instanceof emk ? (emk) queryLocalInterface : new emm(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        emq emqVar;
        switch (i) {
            case 1:
                mo14466a();
                parcel2.writeNoException();
                return true;
            case 2:
                mo14463b();
                parcel2.writeNoException();
                return true;
            case 3:
                mo14464a(dvc.m15677a(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean d = mo14461d();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, d);
                return true;
            case 5:
                int e = mo14460e();
                parcel2.writeNoException();
                parcel2.writeInt(e);
                return true;
            case 6:
                float f = mo14459f();
                parcel2.writeNoException();
                parcel2.writeFloat(f);
                return true;
            case 7:
                float g = mo14458g();
                parcel2.writeNoException();
                parcel2.writeFloat(g);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    emqVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    emqVar = queryLocalInterface instanceof emp ? (emp) queryLocalInterface : new emq(readStrongBinder);
                }
                mo14465a(emqVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float i3 = mo14456i();
                parcel2.writeNoException();
                parcel2.writeFloat(i3);
                return true;
            case 10:
                boolean j = mo14455j();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, j);
                return true;
            case 11:
                emp h = mo14457h();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, h);
                return true;
            case 12:
                boolean k = mo14454k();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, k);
                return true;
            case 13:
                mo14462c();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
