package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzss.class */
public final class zzss extends zzgw implements zzsq {
    public zzss(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void onAppOpenAdClosed() throws RemoteException {
        zzb(1, zzdo());
    }
}
