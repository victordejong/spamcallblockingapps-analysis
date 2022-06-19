package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfp.class */
public final class zzbfp extends zzadj implements zzbfr {
    public zzbfp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbfr
    public final void zze() throws RemoteException {
        zzbj(1, zza());
    }
}
