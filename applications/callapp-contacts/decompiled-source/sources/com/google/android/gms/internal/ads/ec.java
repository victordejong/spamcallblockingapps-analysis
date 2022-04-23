package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ec.class */
public abstract class ec extends dvd implements ed {
    public ec() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    public static ed a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        return queryLocalInterface instanceof ed ? (ed) queryLocalInterface : new ef(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a(b.a.a(parcel.readStrongBinder()));
        } else if (i == 2) {
            a();
        } else if (i != 3) {
            return false;
        } else {
            b(b.a.a(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
