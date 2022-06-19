package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdg.class */
public final class zzcdg extends zzaoj implements zzcdi {
    public zzcdg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zze(zzcdq zzcdqVar, zzcdm zzcdmVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzcdqVar);
        zzaol.zzf(zza, zzcdmVar);
        zzbt(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzf(zzcdq zzcdqVar, zzcdm zzcdmVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzcdqVar);
        zzaol.zzf(zza, zzcdmVar);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzg(zzcdq zzcdqVar, zzcdm zzcdmVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzcdqVar);
        zzaol.zzf(zza, zzcdmVar);
        zzbt(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzh(String str, zzcdm zzcdmVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaol.zzf(zza, zzcdmVar);
        zzbt(7, zza);
    }
}
