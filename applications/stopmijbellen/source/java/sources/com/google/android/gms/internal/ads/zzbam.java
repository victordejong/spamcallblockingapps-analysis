package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbam.class */
public final class zzbam extends zzaoj {
    public zzbam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final long zze(zzbak zzbakVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbakVar);
        Parcel zzbs = zzbs(3, zza);
        long readLong = zzbs.readLong();
        zzbs.recycle();
        return readLong;
    }

    public final zzbah zzf(zzbak zzbakVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbakVar);
        Parcel zzbs = zzbs(1, zza);
        zzbah zzbahVar = (zzbah) zzaol.zza(zzbs, zzbah.CREATOR);
        zzbs.recycle();
        return zzbahVar;
    }

    public final zzbah zzg(zzbak zzbakVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbakVar);
        Parcel zzbs = zzbs(2, zza);
        zzbah zzbahVar = (zzbah) zzaol.zza(zzbs, zzbah.CREATOR);
        zzbs.recycle();
        return zzbahVar;
    }
}
