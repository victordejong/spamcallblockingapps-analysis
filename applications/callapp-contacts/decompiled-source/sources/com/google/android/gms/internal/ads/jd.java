package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jd.class */
public abstract class jd extends dvd implements je {
    public jd() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a();
        } else if (i != 2) {
            return false;
        } else {
            a(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
