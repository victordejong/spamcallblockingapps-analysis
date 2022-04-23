package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fi.class */
public final class fi extends dvb implements ff {
    /* JADX INFO: Access modifiers changed from: package-private */
    public fi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.ff
    public final void a() throws RemoteException {
        zzb(2, zzdp());
    }
}
