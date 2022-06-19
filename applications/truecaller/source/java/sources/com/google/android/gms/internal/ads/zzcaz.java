package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcaz.class */
public final class zzcaz extends zzadj implements zzcbb {
    public zzcaz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zze(zzcbj zzcbjVar, zzcbf zzcbfVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzcbjVar);
        zzadl.zzf(zza, zzcbfVar);
        zzbj(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzf(zzcbj zzcbjVar, zzcbf zzcbfVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzcbjVar);
        zzadl.zzf(zza, zzcbfVar);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzg(zzcbj zzcbjVar, zzcbf zzcbfVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzcbjVar);
        zzadl.zzf(zza, zzcbfVar);
        zzbj(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzh(String str, zzcbf zzcbfVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzadl.zzf(zza, zzcbfVar);
        zzbj(7, zza);
    }
}
