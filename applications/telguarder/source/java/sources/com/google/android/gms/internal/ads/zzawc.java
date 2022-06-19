package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawc.class */
public final class zzawc {
    public static zzavm zzd(Context context, String str, zzane zzaneVar) {
        try {
            IBinder zzd = ((zzavs) zzazj.zza(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", zzawf.zzbyi)).zzd(ObjectWrapper.wrap(context), str, zzaneVar, 204204000);
            if (zzd == null) {
                return null;
            }
            IInterface queryLocalInterface = zzd.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return queryLocalInterface instanceof zzavm ? (zzavm) queryLocalInterface : new zzavo(zzd);
        } catch (RemoteException | zzazl e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
