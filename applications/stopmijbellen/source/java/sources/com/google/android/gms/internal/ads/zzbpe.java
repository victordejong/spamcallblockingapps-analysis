package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpe.class */
public final class zzbpe extends zzaoj implements zzbpg {
    public zzbpe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbpg
    public final void zze(zzbox zzboxVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzboxVar);
        zzbt(1, zza);
    }
}
