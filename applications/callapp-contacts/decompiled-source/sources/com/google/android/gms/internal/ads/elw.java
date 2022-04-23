package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elw.class */
public final class elw extends dvb implements elu {
    /* JADX INFO: Access modifiers changed from: package-private */
    public elw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // com.google.android.gms.internal.ads.elu
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }
}
