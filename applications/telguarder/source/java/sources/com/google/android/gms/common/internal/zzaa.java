package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzaa.class */
public abstract class zzaa extends zzb implements IGmsCallbacks {
    public zzaa() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.common.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onPostInitComplete(parcel.readInt(), parcel.readStrongBinder(), (Bundle) zzc.zzc(parcel, Bundle.CREATOR));
        } else if (i == 2) {
            zzb(parcel.readInt(), (Bundle) zzc.zzc(parcel, Bundle.CREATOR));
        } else if (i != 3) {
            return false;
        } else {
            zzc(parcel.readInt(), parcel.readStrongBinder(), (zzi) zzc.zzc(parcel, zzi.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
