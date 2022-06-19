package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagc.class */
public final class zzagc extends zzgw implements zzagd {
    public zzagc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzagd
    public final void zztw() throws RemoteException {
        zzb(2, zzdo());
    }
}
