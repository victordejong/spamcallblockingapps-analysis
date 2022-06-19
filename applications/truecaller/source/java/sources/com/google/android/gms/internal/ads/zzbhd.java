package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhd.class */
public final class zzbhd extends zzadj implements zzbhf {
    public zzbhd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zze() throws RemoteException {
        zzbj(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zzf() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zzg() throws RemoteException {
        zzbj(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zzh() throws RemoteException {
        zzbj(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zzi(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzb(zza, z);
        zzbj(5, zza);
    }
}
