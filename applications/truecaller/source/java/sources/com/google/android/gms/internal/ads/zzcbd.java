package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbd.class */
public final class zzcbd extends zzadj implements zzcbf {
    public zzcbd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzcbf
    public final void zze(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, parcelFileDescriptor);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbf
    public final void zzf(zzbc zzbcVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbcVar);
        zzbj(2, zza);
    }
}
