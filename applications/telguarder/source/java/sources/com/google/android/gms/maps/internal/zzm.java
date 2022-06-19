package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
import com.google.android.gms.internal.maps.zzc;
import com.google.android.gms.maps.model.CameraPosition;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzm.class */
public abstract class zzm extends zzb implements zzl {
    public zzm() {
        super("com.google.android.gms.maps.internal.IOnCameraChangeListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onCameraChange((CameraPosition) zzc.zza(parcel, CameraPosition.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
