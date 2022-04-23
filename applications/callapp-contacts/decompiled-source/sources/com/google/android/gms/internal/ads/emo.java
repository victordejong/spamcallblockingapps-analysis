package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emo.class */
public abstract class emo extends dvd implements emp {
    public emo() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a();
        } else if (i == 2) {
            b();
        } else if (i == 3) {
            c();
        } else if (i == 4) {
            d();
        } else if (i != 5) {
            return false;
        } else {
            a(dvc.a(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
