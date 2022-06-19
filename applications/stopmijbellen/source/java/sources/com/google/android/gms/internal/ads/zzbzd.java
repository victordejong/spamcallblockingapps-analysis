package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzd.class */
public final class zzbzd extends zzaoj implements zzbzf {
    public zzbzd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbzf
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzf
    public final void zzf(zzbew zzbewVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbewVar);
        zzbt(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbzf
    public final void zzg() throws RemoteException {
        zzbt(2, zza());
    }
}
