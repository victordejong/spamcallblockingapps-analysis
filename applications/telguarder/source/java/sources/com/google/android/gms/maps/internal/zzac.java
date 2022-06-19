package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
import com.google.android.gms.internal.maps.zzu;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzac.class */
public abstract class zzac extends zzb implements zzab {
    public zzac() {
        super("com.google.android.gms.maps.internal.IOnInfoWindowClickListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zze(zzu.zzg(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
