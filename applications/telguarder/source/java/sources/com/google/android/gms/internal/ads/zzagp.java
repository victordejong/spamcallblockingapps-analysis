package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagp.class */
public abstract class zzagp extends zzgy implements zzagm {
    public zzagp() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onUnconfirmedClickReceived(parcel.readString());
        } else if (i != 2) {
            return false;
        } else {
            onUnconfirmedClickCancelled();
        }
        parcel2.writeNoException();
        return true;
    }
}
