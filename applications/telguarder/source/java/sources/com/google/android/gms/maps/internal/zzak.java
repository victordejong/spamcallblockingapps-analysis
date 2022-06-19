package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
import com.google.android.gms.internal.maps.zzc;
import com.google.android.gms.maps.model.LatLng;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzak.class */
public abstract class zzak extends zzb implements zzaj {
    public zzak() {
        super("com.google.android.gms.maps.internal.IOnMapClickListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onMapClick((LatLng) zzc.zza(parcel, LatLng.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
