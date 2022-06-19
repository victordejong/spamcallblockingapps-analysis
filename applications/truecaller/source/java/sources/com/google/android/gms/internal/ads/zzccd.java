package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccd.class */
public final class zzccd extends zzadj implements zzccf {
    public zzccd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zze() throws RemoteException {
        zzbj(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzf() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzg() throws RemoteException {
        zzbj(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzh() throws RemoteException {
        zzbj(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzi(zzcbz zzcbzVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzcbzVar);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzj() throws RemoteException {
        zzbj(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzk(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbj(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzl() throws RemoteException {
        zzbj(8, zza());
    }
}
