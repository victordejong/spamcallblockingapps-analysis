package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzd.class */
public abstract class zzd extends zzb implements zzc {
    public zzd() {
        super("com.google.android.gms.maps.internal.ICancelableCallback");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onFinish();
        } else if (i != 2) {
            return false;
        } else {
            onCancel();
        }
        parcel2.writeNoException();
        return true;
    }
}
