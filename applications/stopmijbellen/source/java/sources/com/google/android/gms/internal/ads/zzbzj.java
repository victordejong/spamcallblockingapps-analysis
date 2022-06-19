package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzj.class */
public final class zzbzj extends zzaoj implements zzbzl {
    public zzbzj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbzl
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzl
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzl
    public final void zzg() throws RemoteException {
        zzbt(2, zza());
    }
}
