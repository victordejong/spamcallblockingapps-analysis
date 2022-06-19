package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayp.class */
public final class zzayp extends zzadj implements IInterface {
    public zzayp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final zzayk zze(zzayn zzaynVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzaynVar);
        Parcel zzbi = zzbi(1, zza);
        zzayk zzaykVar = (zzayk) zzadl.zzc(zzbi, zzayk.CREATOR);
        zzbi.recycle();
        return zzaykVar;
    }

    public final zzayk zzf(zzayn zzaynVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzaynVar);
        Parcel zzbi = zzbi(2, zza);
        zzayk zzaykVar = (zzayk) zzadl.zzc(zzbi, zzayk.CREATOR);
        zzbi.recycle();
        return zzaykVar;
    }

    public final long zzg(zzayn zzaynVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzaynVar);
        Parcel zzbi = zzbi(3, zza);
        long readLong = zzbi.readLong();
        zzbi.recycle();
        return readLong;
    }
}
