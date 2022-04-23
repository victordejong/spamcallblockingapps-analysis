package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eme.class */
public final class eme extends dvb implements emc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public eme(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.emc
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }
}
