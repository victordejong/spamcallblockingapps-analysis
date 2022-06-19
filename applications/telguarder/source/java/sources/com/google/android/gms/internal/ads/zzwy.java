package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwy.class */
public final class zzwy extends zzgw implements zzww {
    public zzwy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzww
    public final void onAdClicked() throws RemoteException {
        zzb(1, zzdo());
    }
}
