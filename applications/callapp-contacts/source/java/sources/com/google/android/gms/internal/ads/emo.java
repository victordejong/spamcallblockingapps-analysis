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
            mo14054a();
        } else if (i == 2) {
            mo14052b();
        } else if (i == 3) {
            mo14051c();
        } else if (i == 4) {
            mo14050d();
        } else if (i != 5) {
            return false;
        } else {
            mo14053a(dvc.m15677a(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
