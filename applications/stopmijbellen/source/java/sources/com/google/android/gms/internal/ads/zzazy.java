package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazy.class */
public final class zzazy extends zzaoj implements zzbaa {
    public zzazy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbaa
    public final void zzb() throws RemoteException {
        zzbt(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbaa
    public final void zzc() throws RemoteException {
        zzbt(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbaa
    public final void zzd(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbaa
    public final void zze() throws RemoteException {
        zzbt(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbaa
    public final void zzf() throws RemoteException {
        zzbt(1, zza());
    }
}
