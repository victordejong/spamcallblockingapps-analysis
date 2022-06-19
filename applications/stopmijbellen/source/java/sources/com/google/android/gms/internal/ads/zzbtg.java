package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtg.class */
public final class zzbtg extends zzaoj {
    public zzbtg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void zze(zzbta zzbtaVar, zzbtf zzbtfVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbtaVar);
        zzaol.zzf(zza, zzbtfVar);
        zzbu(2, zza);
    }
}
