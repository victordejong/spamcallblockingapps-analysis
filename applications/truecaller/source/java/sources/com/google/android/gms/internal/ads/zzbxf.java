package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxf.class */
public final class zzbxf extends zzadj implements zzbxh {
    public zzbxf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final void zze(zzbvv zzbvvVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbvvVar);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final void zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final void zzg(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(3, zza);
    }
}
