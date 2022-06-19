package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbph.class */
public final class zzbph extends zzaoj implements zzbpj {
    public zzbph(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbpj
    public final void zze(zzboz zzbozVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbozVar);
        zzbt(1, zza);
    }
}
