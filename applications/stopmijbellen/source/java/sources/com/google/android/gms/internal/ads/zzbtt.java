package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtt.class */
public abstract class zzbtt extends zzaok implements zzbtu {
    public zzbtt() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    public static zzbtu zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        return queryLocalInterface instanceof zzbtu ? (zzbtu) queryLocalInterface : new zzbts(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzb(parcel.createTypedArrayList(zzbtn.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
