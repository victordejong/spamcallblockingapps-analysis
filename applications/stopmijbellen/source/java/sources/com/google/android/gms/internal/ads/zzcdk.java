package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdk.class */
public final class zzcdk extends zzaoj implements zzcdm {
    public zzcdk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zze(zzbd zzbdVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbdVar);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, parcelFileDescriptor);
        zzbt(1, zza);
    }
}
