package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbng.class */
public final class zzbng extends zzadj implements zzbni {
    public zzbng(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbni
    public final void zze(zzbmy zzbmyVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbmyVar);
        zzbj(1, zza);
    }
}
