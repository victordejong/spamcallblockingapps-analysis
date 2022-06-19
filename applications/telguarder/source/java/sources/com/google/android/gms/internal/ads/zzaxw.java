package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxw.class */
public abstract class zzaxw extends zzgy implements zzaxx {
    public zzaxw() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzj(parcel.readString(), parcel.readString());
        } else if (i == 2) {
            onError(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            zza(parcel.readString(), parcel.readString(), (Bundle) zzgx.zza(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
