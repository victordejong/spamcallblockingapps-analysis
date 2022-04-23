package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vg.class */
public final class vg {
    public static uq a(Context context, String str, mm mmVar) {
        try {
            IBinder a2 = ((uw) yz.a(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", vf.f28426a)).a(d.a(context), str, mmVar);
            if (a2 == null) {
                return null;
            }
            IInterface queryLocalInterface = a2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return queryLocalInterface instanceof uq ? (uq) queryLocalInterface : new us(a2);
        } catch (RemoteException | zzbap e) {
            za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
