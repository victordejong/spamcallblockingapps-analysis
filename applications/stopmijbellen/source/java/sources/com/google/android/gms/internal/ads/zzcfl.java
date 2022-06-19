package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfl.class */
public final class zzcfl {
    public static final zzcez zza(Context context, String str, zzbxh zzbxhVar) {
        zzcex zzcexVar;
        try {
            IBinder zze = ((zzcfd) zzcjd.zzb(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", zzcfk.zza)).zze(ObjectWrapper.wrap(context), str, zzbxhVar, 214106000);
            if (zze == null) {
                zzcexVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
                zzcexVar = queryLocalInterface instanceof zzcez ? (zzcez) queryLocalInterface : new zzcex(zze);
            }
            return zzcexVar;
        } catch (RemoteException | zzcjc e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }
}
