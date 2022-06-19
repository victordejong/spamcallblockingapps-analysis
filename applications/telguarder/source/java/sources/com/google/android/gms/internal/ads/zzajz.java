package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajz.class */
public abstract class zzajz extends zzgy implements zzajw {
    public zzajz() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzue();
        } else if (i != 2) {
            return false;
        } else {
            zzda(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
