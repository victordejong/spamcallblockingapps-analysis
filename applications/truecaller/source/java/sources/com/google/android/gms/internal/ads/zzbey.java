package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbey.class */
public final class zzbey extends zzadj implements zzbfa {
    public zzbey(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzb() throws RemoteException {
        zzbj(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzc(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzd(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zze() throws RemoteException {
        zzbj(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzf() throws RemoteException {
        zzbj(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzg() throws RemoteException {
        zzbj(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzh() throws RemoteException {
        zzbj(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzi() throws RemoteException {
        zzbj(7, zza());
    }
}
