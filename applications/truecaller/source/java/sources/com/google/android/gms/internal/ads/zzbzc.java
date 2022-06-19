package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzc.class */
public final class zzbzc extends zzadj implements zzbze {
    public zzbzc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.zzbze
    public final void zze(Intent intent) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, intent);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbze
    public final void zzf(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeString(str2);
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbze
    public final void zzg() throws RemoteException {
        zzbj(3, zza());
    }
}
