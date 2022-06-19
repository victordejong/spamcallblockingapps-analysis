package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhb.class */
public final class zzbhb extends zzaoj implements zzbhd {
    public zzbhb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final String zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final String zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zzg(zzbfd zzbfdVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfdVar);
        zzbt(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final void zzh(zzbfd zzbfdVar, int i) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfdVar);
        zza.writeInt(i);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbhd
    public final boolean zzi() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
