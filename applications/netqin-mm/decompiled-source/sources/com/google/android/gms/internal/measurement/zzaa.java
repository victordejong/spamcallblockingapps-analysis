package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaa.class */
public abstract class zzaa extends zzc implements zzab {
    public zzaa() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    /* renamed from: a */
    public final boolean mo9195a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo10431a(parcel.readString(), parcel.readString(), (Bundle) zzb.m10428a(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int zza = zza();
            parcel2.writeNoException();
            parcel2.writeInt(zza);
            return true;
        }
    }
}
