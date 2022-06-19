package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnt.class */
public final class zzbnt extends zzadj implements zzbnv {
    public zzbnt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zze(zzboe zzboeVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzboeVar);
        zzbj(1, zza);
    }
}
