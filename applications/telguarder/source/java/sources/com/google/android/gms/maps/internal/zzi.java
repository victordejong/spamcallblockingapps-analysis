package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.maps.zzb;
import com.google.android.gms.internal.maps.zzc;
import com.google.android.gms.internal.maps.zzu;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzi.class */
public abstract class zzi extends zzb implements zzh {
    public zzi() {
        super("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper zzh = zzh(zzu.zzg(parcel.readStrongBinder()));
            parcel2.writeNoException();
            zzc.zza(parcel2, zzh);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            IObjectWrapper zzi = zzi(zzu.zzg(parcel.readStrongBinder()));
            parcel2.writeNoException();
            zzc.zza(parcel2, zzi);
            return true;
        }
    }
}
