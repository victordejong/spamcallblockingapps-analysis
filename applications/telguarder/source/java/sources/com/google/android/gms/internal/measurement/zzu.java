package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzu.class */
public abstract class zzu extends zzb implements zzv {
    public zzu() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzd(parcel.readString(), parcel.readString(), (Bundle) zzc.zzc(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int zze = zze();
            parcel2.writeNoException();
            parcel2.writeInt(zze);
            return true;
        }
    }
}
