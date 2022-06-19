package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnm.class */
public final class zzbnm extends zzadj implements zzbno {
    public zzbnm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbno
    public final void zze(zzbnb zzbnbVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbnbVar);
        zzbj(1, zza);
    }
}
