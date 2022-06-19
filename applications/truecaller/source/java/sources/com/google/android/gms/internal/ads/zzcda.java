package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcda.class */
public final class zzcda extends zzadj implements IInterface {
    public zzcda(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    public final void zze(zzccp zzccpVar, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzccpVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzbj(2, zza);
    }
}
