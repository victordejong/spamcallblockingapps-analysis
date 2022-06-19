package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhm.class */
public final class zzbhm extends zzaoj implements zzbho {
    public zzbhm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbho
    public final void zze() throws RemoteException {
        zzbt(1, zza());
    }
}
