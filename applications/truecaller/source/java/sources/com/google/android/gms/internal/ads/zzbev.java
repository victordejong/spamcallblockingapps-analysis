package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbev.class */
public final class zzbev extends zzadj implements zzbex {
    public zzbev(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbex
    public final void zzb() throws RemoteException {
        zzbj(1, zza());
    }
}
