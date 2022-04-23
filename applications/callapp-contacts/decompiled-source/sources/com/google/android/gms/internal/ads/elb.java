package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elb.class */
public final class elb extends dvb implements ekz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public elb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.internal.ads.ekz
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }
}
