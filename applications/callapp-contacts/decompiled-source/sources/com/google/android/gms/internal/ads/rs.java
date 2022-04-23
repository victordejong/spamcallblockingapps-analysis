package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rs.class */
public abstract class rs extends dvd implements ro {
    public rs() {
        super("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    public static ro a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        return queryLocalInterface instanceof ro ? (ro) queryLocalInterface : new rr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a(parcel.createTypedArrayList(Uri.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            a(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
