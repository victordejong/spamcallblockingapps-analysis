package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfz.class */
public final class zzbfz extends zzadj implements zzbgb {
    public zzbfz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void zzb(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void zzc() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void zzd() throws RemoteException {
        zzbj(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void zze() throws RemoteException {
        zzbj(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbgb
    public final void zzf() throws RemoteException {
        zzbj(5, zza());
    }
}
