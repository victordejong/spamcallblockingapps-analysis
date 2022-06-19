package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbud.class */
public final class zzbud extends zzaoj implements zzbuf {
    public zzbud(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbuf
    public final void zze(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuf
    public final void zzf() throws RemoteException {
        zzbt(1, zza());
    }
}
