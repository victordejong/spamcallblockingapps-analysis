package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbke.class */
public final class zzbke extends zzadj implements zzbkg {
    public zzbke(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zze(zzbkd zzbkdVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbkdVar);
        zzbj(1, zza);
    }
}
