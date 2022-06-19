package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxi.class */
public final class zzbxi extends zzadj implements zzbxk {
    public zzbxi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zze() throws RemoteException {
        zzbj(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString("Adapter returned null.");
        zzbj(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzg(zzbcz zzbczVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzbczVar);
        zzbj(4, zza);
    }
}
