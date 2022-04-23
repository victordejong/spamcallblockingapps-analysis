package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bl.class */
public abstract class bl extends dvd implements bm {
    public bl() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String a2 = a();
            parcel2.writeNoException();
            parcel2.writeString(a2);
            return true;
        } else if (i == 2) {
            String b2 = b();
            parcel2.writeNoException();
            parcel2.writeString(b2);
            return true;
        } else if (i == 3) {
            a(b.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            c();
            parcel2.writeNoException();
            return true;
        } else if (i != 5) {
            return false;
        } else {
            d();
            parcel2.writeNoException();
            return true;
        }
    }
}
