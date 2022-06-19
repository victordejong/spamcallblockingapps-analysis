package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcek.class */
public final class zzcek extends zzaoj implements zzcem {
    public zzcek(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    public final void zze(zzceg zzcegVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzcegVar);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    public final void zzf() throws RemoteException {
        zzbt(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    public final void zzg(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    public final void zzh() throws RemoteException {
        zzbt(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    public final void zzi() throws RemoteException {
        zzbt(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    public final void zzj() throws RemoteException {
        zzbt(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    public final void zzk() throws RemoteException {
        zzbt(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    public final void zzl() throws RemoteException {
        zzbt(3, zza());
    }
}
