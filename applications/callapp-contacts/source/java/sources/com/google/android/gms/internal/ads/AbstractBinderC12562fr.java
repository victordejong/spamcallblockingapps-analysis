package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.fr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fr.class */
public abstract class AbstractBinderC12562fr extends dvd implements AbstractC12563fs {
    public AbstractBinderC12562fr() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14235a(parcel.readString());
        } else if (i != 2) {
            return false;
        } else {
            mo14236a();
        }
        parcel2.writeNoException();
        return true;
    }
}
