package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzceh.class */
public final class zzceh extends zzaoj {
    public zzceh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    public final void zze(zzceg zzcegVar, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzcegVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzbt(2, zza);
    }
}
