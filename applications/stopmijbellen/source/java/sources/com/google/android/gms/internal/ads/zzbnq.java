package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnq.class */
public final class zzbnq extends zzaoj {
    public zzbnq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
    }

    public final void zze(zzcda zzcdaVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzcdaVar);
        zzbt(1, zza);
    }
}
