package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
import com.google.android.gms.internal.maps.zzc;
import com.google.android.gms.internal.maps.zzu;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzas.class */
public abstract class zzas extends zzb implements zzar {
    public zzas() {
        super("com.google.android.gms.maps.internal.IOnMarkerClickListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            boolean zza = zza(zzu.zzg(parcel.readStrongBinder()));
            parcel2.writeNoException();
            zzc.writeBoolean(parcel2, zza);
            return true;
        }
        return false;
    }
}
