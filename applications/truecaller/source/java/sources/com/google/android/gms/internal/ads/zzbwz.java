package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwz.class */
public final class zzbwz extends zzadj implements zzbxb {
    public zzbwz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbxb
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxb
    public final void zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxb
    public final void zzg(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxb
    public final void zzh(zzbvp zzbvpVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbvpVar);
        zzbj(4, zza);
    }
}
