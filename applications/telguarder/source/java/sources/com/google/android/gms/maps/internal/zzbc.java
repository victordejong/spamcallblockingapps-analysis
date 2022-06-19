package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
import com.google.android.gms.internal.maps.zzc;
import com.google.android.gms.maps.model.PointOfInterest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzbc.class */
public abstract class zzbc extends zzb implements zzbb {
    public zzbc() {
        super("com.google.android.gms.maps.internal.IOnPoiClickListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((PointOfInterest) zzc.zza(parcel, PointOfInterest.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
