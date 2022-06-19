package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbio.class */
public final class zzbio extends zzaoj implements zzbiq {
    public zzbio(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    public final void zze() throws RemoteException {
        zzbt(1, zza());
    }
}
