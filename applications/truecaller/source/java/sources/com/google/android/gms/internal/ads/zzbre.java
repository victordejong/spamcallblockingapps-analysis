package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbre.class */
public final class zzbre extends zzadj implements IInterface {
    public zzbre(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void zze(zzbqy zzbqyVar, zzbrd zzbrdVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbqyVar);
        zzadl.zzf(zza, zzbrdVar);
        zzbk(2, zza);
    }
}
