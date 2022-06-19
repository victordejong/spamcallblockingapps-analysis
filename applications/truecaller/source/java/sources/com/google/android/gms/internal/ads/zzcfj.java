package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfj.class */
public abstract class zzcfj extends zzadk implements zzcfk {
    public zzcfj() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.readString();
            parcel.readString();
        } else if (i == 2) {
            zzb(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            zzc(parcel.readString(), parcel.readString(), (Bundle) zzadl.zzc(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
