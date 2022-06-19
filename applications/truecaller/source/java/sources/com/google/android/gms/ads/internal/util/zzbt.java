package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzadk;
import com.google.android.gms.internal.ads.zzadl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbt.class */
public abstract class zzbt extends zzadk implements zzbu {
    public zzbt() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            boolean zze = zze(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            zzadl.zzb(parcel2, zze);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            zzf(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }
}
