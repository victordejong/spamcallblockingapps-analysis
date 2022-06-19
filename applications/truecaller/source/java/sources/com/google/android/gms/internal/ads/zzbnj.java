package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnj.class */
public final class zzbnj extends zzadj implements zzbnl {
    public zzbnj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void zze(zzbnb zzbnbVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbnbVar);
        zza.writeString(str);
        zzbj(1, zza);
    }
}
