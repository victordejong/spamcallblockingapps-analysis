package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egj.class */
public final class egj extends dvb implements egh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public egj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
    }

    @Override // com.google.android.gms.internal.ads.egh
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }
}
