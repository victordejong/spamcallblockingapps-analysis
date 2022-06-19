package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfa.class */
public final class zzcfa extends zzaoj implements zzcfc {
    public zzcfa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzcfc
    public final void zze() throws RemoteException {
        zzbt(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcfc
    public final void zzf() throws RemoteException {
        zzbt(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcfc
    public final void zzg() throws RemoteException {
        zzbt(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcfc
    public final void zzh(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfc
    public final void zzi(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfc
    public final void zzj() throws RemoteException {
        zzbt(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcfc
    public final void zzk(zzcew zzcewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzcewVar);
        zzbt(3, zza);
    }
}
