package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/to.class */
public abstract class to extends dvd implements tp {
    public to() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String a2 = a();
            parcel2.writeNoException();
            parcel2.writeString(a2);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int b2 = b();
            parcel2.writeNoException();
            parcel2.writeInt(b2);
            return true;
        }
    }
}
