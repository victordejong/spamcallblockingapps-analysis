package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgu.class */
public final class zzbgu extends zzadj implements zzbgw {
    public zzbgu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbgw
    public final void zze(zzbdn zzbdnVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbdnVar);
        zzbj(1, zza);
    }
}
