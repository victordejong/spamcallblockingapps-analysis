package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwq.class */
public final class zzwq extends zzgu implements zzwo {
    public zzwq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzwo
    public final void onAdClicked() throws RemoteException {
        m12084b(1, m12086W());
    }
}
