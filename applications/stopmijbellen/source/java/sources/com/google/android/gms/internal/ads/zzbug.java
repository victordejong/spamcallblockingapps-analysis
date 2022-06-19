package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbug.class */
public final class zzbug extends zzaoj implements zzbui {
    public zzbug(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    public final void zze(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    public final void zzg(zzbuc zzbucVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbucVar);
        zzbt(1, zza);
    }
}
