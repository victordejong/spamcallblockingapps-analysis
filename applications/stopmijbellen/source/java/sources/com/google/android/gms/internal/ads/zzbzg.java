package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzg.class */
public final class zzbzg extends zzaoj implements zzbzi {
    public zzbzg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbzi
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzi
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzi
    public final void zzg(zzbxw zzbxwVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbxwVar);
        zzbt(1, zza);
    }
}
