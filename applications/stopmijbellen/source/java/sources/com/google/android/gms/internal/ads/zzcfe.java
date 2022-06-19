package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfe.class */
public final class zzcfe extends zzaoj implements zzcfg {
    public zzcfe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zze(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zzg() throws RemoteException {
        zzbt(1, zza());
    }
}
