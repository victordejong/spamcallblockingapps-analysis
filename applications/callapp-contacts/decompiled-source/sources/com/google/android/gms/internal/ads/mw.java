package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mw.class */
public abstract class mw extends dvd implements mt {
    public mw() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            b a2 = a();
            parcel2.writeNoException();
            dvc.a(parcel2, a2);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            boolean b2 = b();
            parcel2.writeNoException();
            dvc.a(parcel2, b2);
            return true;
        }
    }
}
