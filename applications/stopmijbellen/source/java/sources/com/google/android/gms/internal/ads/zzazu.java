package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazu.class */
public final class zzazu extends zzaoj implements zzazw {
    public zzazu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zzb(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zzc(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zzd(zzazt zzaztVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzaztVar);
        zzbt(1, zza);
    }
}
