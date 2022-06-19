package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzak.class */
public abstract class zzak extends zzb implements zzaj {
    public zzak() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((zzad) zzc.zza(parcel, zzad.CREATOR));
            return true;
        }
        return false;
    }
}
