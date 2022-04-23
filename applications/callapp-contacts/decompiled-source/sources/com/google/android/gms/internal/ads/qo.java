package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qo.class */
public abstract class qo extends dvd implements ql {
    public qo() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    public static ql a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        return queryLocalInterface instanceof ql ? (ql) queryLocalInterface : new qn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a((Intent) dvc.a(parcel, Intent.CREATOR));
        } else if (i == 2) {
            a(b.a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            a();
        }
        parcel2.writeNoException();
        return true;
    }
}
