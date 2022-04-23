package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eke.class */
public final class eke extends dvb implements ekc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public eke(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.ekc
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }
}
