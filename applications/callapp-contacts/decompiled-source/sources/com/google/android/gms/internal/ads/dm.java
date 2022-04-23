package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dm.class */
public abstract class dm extends dvd implements dj {
    public dm() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    public static dj a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return queryLocalInterface instanceof dj ? (dj) queryLocalInterface : new dl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            String a2 = a();
            parcel2.writeNoException();
            parcel2.writeString(a2);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<dr> b2 = b();
            parcel2.writeNoException();
            parcel2.writeList(b2);
            return true;
        }
    }
}
