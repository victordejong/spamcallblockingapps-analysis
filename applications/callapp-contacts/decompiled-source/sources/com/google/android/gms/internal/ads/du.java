package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/du.class */
public abstract class du extends dvd implements dr {
    public du() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static dr a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return queryLocalInterface instanceof dr ? (dr) queryLocalInterface : new dt(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            b a2 = a();
            parcel2.writeNoException();
            dvc.a(parcel2, a2);
            return true;
        } else if (i == 2) {
            Uri b2 = b();
            parcel2.writeNoException();
            dvc.b(parcel2, b2);
            return true;
        } else if (i == 3) {
            double c2 = c();
            parcel2.writeNoException();
            parcel2.writeDouble(c2);
            return true;
        } else if (i == 4) {
            int d2 = d();
            parcel2.writeNoException();
            parcel2.writeInt(d2);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            int e = e();
            parcel2.writeNoException();
            parcel2.writeInt(e);
            return true;
        }
    }
}
