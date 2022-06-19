package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaiy.class */
public final class zzaiy extends zzgw implements zzaiz {
    public zzaiy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzaiz
    public final void zza(zzait zzaitVar, zzaix zzaixVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaitVar);
        zzgx.zza(zzdo, zzaixVar);
        zzc(2, zzdo);
    }
}
