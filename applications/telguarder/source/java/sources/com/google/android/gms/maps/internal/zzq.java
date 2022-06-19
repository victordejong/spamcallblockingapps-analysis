package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzq.class */
public abstract class zzq extends zzb implements zzp {
    public zzq() {
        super("com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onCameraMoveCanceled();
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
