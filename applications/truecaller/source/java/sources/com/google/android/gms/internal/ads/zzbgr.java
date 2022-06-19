package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgr.class */
public final class zzbgr extends zzadj implements zzbgt {
    public zzbgr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbgt
    public final void zze() throws RemoteException {
        zzbj(1, zza());
    }
}
