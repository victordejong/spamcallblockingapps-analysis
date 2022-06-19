package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxf.class */
public final class zzbxf extends zzaoj implements zzbxh {
    public zzbxf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final zzbxk zzb(String str) throws RemoteException {
        zzbxi zzbxiVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbs = zzbs(1, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbxiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzbxiVar = queryLocalInterface instanceof zzbxk ? (zzbxk) queryLocalInterface : new zzbxi(readStrongBinder);
        }
        zzbs.recycle();
        return zzbxiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final zzbzo zzc(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbs = zzbs(3, zza);
        zzbzo zzb = zzbzn.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final boolean zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbs = zzbs(4, zza);
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final boolean zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbs = zzbs(2, zza);
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
