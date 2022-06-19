package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhw.class */
public final class zzbhw extends zzaoj implements zzbhy {
    public zzbhw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbhy
    public final void zzb() throws RemoteException {
        zzbt(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhy
    public final void zzc() throws RemoteException {
        zzbt(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhy
    public final void zzd(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhy
    public final void zze() throws RemoteException {
        zzbt(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbhy
    public final void zzf() throws RemoteException {
        zzbt(2, zza());
    }
}
