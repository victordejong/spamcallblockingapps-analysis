package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcde.class */
public final class zzcde {
    public static final zzccs zza(Context context, String str, zzbvg zzbvgVar) {
        zzccq zzccqVar;
        try {
            IBinder zze = ((zzccw) zzcgx.zza(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", zzcdd.zza)).zze(new ObjectWrapper(context), str, zzbvgVar, 213806000);
            if (zze == null) {
                zzccqVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
                zzccqVar = queryLocalInterface instanceof zzccs ? (zzccs) queryLocalInterface : new zzccq(zze);
            }
            return zzccqVar;
        } catch (RemoteException | zzcgw e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }
}
