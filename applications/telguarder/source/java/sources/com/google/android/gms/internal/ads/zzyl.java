package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyl.class */
public final class zzyl extends zzgw implements zzyj {
    public zzyl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final void onAdMuted() throws RemoteException {
        zzb(1, zzdo());
    }
}
