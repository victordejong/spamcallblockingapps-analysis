package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnd.class */
public final class zzbnd extends zzadj implements zzbnf {
    public zzbnd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbnf
    public final void zze(zzbmw zzbmwVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbmwVar);
        zzbj(1, zza);
    }
}
