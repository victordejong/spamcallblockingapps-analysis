package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpu.class */
public final class zzbpu extends zzaoj implements zzbpw {
    public zzbpu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbpw
    public final void zze(zzbqf zzbqfVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbqfVar);
        zzbt(1, zza);
    }
}
