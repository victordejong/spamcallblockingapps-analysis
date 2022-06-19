package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxx.class */
public final class zzaxx extends zzadj implements zzaxz {
    public zzaxx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaxz
    public final void zzb(zzaxw zzaxwVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzaxwVar);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxz
    public final void zzc(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxz
    public final void zzd(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(3, zza);
    }
}
