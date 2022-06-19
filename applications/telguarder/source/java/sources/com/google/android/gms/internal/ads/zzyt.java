package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzyt.class */
public final class zzyt extends zzgw implements zzyr {
    public zzyt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzyr
    public final void onAdMetadataChanged() throws RemoteException {
        zzb(1, zzdo());
    }
}
