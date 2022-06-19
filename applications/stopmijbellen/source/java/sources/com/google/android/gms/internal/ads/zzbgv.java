package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgv.class */
public final class zzbgv extends zzaoj implements zzbgx {
    public zzbgv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzc() throws RemoteException {
        zzbt(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzd() throws RemoteException {
        zzbt(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zze(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzg() throws RemoteException {
        zzbt(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzh() throws RemoteException {
        zzbt(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzi() throws RemoteException {
        zzbt(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzj() throws RemoteException {
        zzbt(5, zza());
    }
}
