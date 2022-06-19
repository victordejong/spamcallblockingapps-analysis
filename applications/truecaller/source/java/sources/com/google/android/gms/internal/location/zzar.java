package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationSettingsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzar.class */
public abstract class zzar extends zzb implements zzaq {
    public zzar() {
        super("com.google.android.gms.location.internal.ISettingsCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((LocationSettingsResult) zzc.zza(parcel, LocationSettingsResult.CREATOR));
            return true;
        }
        return false;
    }
}
