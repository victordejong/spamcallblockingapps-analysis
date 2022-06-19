package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpn.class */
public final class zzbpn extends zzaoj implements zzbpp {
    public zzbpn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbpp
    public final void zze(zzbpc zzbpcVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbpcVar);
        zzbt(1, zza);
    }
}
