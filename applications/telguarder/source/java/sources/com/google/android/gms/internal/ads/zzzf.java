package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzf.class */
public final class zzzf extends zzgw implements zzzd {
    public zzzf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoEnd() throws RemoteException {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoMute(boolean z) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoPause() throws RemoteException {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoPlay() throws RemoteException {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoStart() throws RemoteException {
        zzb(1, zzdo());
    }
}
