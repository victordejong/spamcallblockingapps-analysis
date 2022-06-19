package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqn.class */
public final class zzbqn extends zzadj implements zzbqp {
    public zzbqn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbqp
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbqp
    public final void zzf() throws RemoteException {
        zzbj(2, zza());
    }
}
