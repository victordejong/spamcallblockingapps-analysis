package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
import com.google.android.gms.internal.maps.zzc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzaw.class */
public abstract class zzaw extends zzb implements zzav {
    public zzaw() {
        super("com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            boolean onMyLocationButtonClick = onMyLocationButtonClick();
            parcel2.writeNoException();
            zzc.writeBoolean(parcel2, onMyLocationButtonClick);
            return true;
        }
        return false;
    }
}
