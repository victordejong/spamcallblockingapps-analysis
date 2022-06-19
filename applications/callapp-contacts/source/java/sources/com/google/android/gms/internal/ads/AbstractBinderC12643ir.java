package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ir */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ir.class */
public abstract class AbstractBinderC12643ir extends dvd implements AbstractC12640io {
    public AbstractBinderC12643ir() {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            mo14597a();
        } else if (i != 3) {
            return false;
        } else {
            mo14596a(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
