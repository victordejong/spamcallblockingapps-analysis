package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.jd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jd.class */
public abstract class AbstractBinderC12656jd extends dvd implements AbstractC12657je {
    public AbstractBinderC12656jd() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14585a();
        } else if (i != 2) {
            return false;
        } else {
            mo14584a(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
