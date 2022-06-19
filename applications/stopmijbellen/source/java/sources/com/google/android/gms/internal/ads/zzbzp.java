package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzp.class */
public final class zzbzp extends zzaoj implements zzbzr {
    public zzbzp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbzr
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbt(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzr
    public final void zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzr
    public final void zzg(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(3, zza);
    }
}
