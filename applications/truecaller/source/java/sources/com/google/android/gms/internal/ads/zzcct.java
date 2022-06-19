package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcct.class */
public final class zzcct extends zzadj implements zzccv {
    public zzcct(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zze() throws RemoteException {
        zzbj(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zzf() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zzg(zzccp zzccpVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzccpVar);
        zzbj(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zzh(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbj(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zzi(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zzj() throws RemoteException {
        zzbj(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zzk() throws RemoteException {
        zzbj(7, zza());
    }
}
