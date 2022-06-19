package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.is */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/is.class */
public abstract class AbstractBinderC12644is extends dvd implements AbstractC12645it {
    public AbstractBinderC12644is() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14595a(parcel.createTypedArrayList(zzajm.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
