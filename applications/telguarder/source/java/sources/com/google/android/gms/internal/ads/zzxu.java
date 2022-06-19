package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxu.class */
public final class zzxu extends zzgw implements zzxs {
    public zzxu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.internal.ads.zzxs
    public final void onAdMetadataChanged() throws RemoteException {
        zzb(1, zzdo());
    }
}
