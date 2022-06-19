package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzu.class */
public abstract class zzu extends zzb implements zzt {
    public zzu() {
        super("com.google.android.gms.maps.internal.IOnCameraMoveStartedListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onCameraMoveStarted(parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
