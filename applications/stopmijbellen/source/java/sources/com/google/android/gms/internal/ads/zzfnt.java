package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfnt.class */
public final class zzfnt extends zzaoj {
    public zzfnt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzfnr zze(zzfnp zzfnpVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzfnpVar);
        Parcel zzbs = zzbs(1, zza);
        zzfnr zzfnrVar = (zzfnr) zzaol.zza(zzbs, zzfnr.CREATOR);
        zzbs.recycle();
        return zzfnrVar;
    }

    public final zzfoa zzf(zzfny zzfnyVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzfnyVar);
        Parcel zzbs = zzbs(3, zza);
        zzfoa zzfoaVar = (zzfoa) zzaol.zza(zzbs, zzfoa.CREATOR);
        zzbs.recycle();
        return zzfoaVar;
    }

    public final void zzg(zzfnm zzfnmVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzfnmVar);
        zzbt(2, zza);
    }
}
