package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzym.class */
public abstract class zzym extends zzgt implements zzyn {
    public zzym() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    /* renamed from: a */
    public static zzyn m11116a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        return queryLocalInterface instanceof zzyn ? (zzyn) queryLocalInterface : new zzyp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String a = mo11114a();
            parcel2.writeNoException();
            parcel2.writeString(a);
            return true;
        } else if (i == 2) {
            String K1 = mo11115K1();
            parcel2.writeNoException();
            parcel2.writeString(K1);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<zzvr> t1 = mo11113t1();
            parcel2.writeNoException();
            parcel2.writeTypedList(t1);
            return true;
        }
    }
}
