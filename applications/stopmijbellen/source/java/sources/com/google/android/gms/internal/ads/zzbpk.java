package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpk.class */
public final class zzbpk extends zzaoj implements zzbpm {
    public zzbpk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zze(zzbpc zzbpcVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbpcVar);
        zza.writeString(str);
        zzbt(1, zza);
    }
}
