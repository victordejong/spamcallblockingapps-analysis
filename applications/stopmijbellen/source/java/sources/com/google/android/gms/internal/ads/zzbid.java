package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbid.class */
public final class zzbid extends zzaoj implements zzbif {
    public zzbid(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbif
    public final void zze() throws RemoteException {
        zzbt(1, zza());
    }
}
