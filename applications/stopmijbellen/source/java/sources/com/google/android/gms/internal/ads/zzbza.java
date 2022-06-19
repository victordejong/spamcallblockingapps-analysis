package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbza.class */
public final class zzbza extends zzaoj implements zzbzc {
    public zzbza(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbzc
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzc
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzc
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzc
    public final void zzh(zzbxq zzbxqVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbxqVar);
        zzbt(4, zza);
    }
}
