package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchp.class */
public abstract class zzchp extends zzaok implements zzchq {
    public zzchp() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.readString();
            parcel.readString();
        } else if (i == 2) {
            zzb(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            zzc(parcel.readString(), parcel.readString(), (Bundle) zzaol.zza(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
