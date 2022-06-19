package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmc.class */
public final class zzbmc extends zzaoj implements zzbme {
    public zzbmc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zze(zzbmb zzbmbVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbmbVar);
        zzbt(1, zza);
    }
}
