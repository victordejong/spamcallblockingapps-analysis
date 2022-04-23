package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egx.class */
public final class egx extends dvb implements egy {
    /* JADX INFO: Access modifiers changed from: package-private */
    public egx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.ads.egy
    public final zzth a(zzti zztiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zztiVar);
        Parcel zza = zza(1, zzdp);
        zzth zzthVar = (zzth) dvc.a(zza, zzth.CREATOR);
        zza.recycle();
        return zzthVar;
    }

    @Override // com.google.android.gms.internal.ads.egy
    public final zzth b(zzti zztiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zztiVar);
        Parcel zza = zza(2, zzdp);
        zzth zzthVar = (zzth) dvc.a(zza, zzth.CREATOR);
        zza.recycle();
        return zzthVar;
    }

    @Override // com.google.android.gms.internal.ads.egy
    public final long c(zzti zztiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zztiVar);
        Parcel zza = zza(3, zzdp);
        long readLong = zza.readLong();
        zza.recycle();
        return readLong;
    }
}
