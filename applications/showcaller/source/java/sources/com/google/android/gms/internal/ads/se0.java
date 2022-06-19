package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/se0.class */
public final class se0 {
    /* renamed from: a */
    public static final fe0 m11077a(Context context, String str, s70 s70Var) {
        de0 de0Var;
        try {
            IBinder m14136a3 = ((je0) hi0.m14638a(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", re0.f28890a)).m14136a3(BinderC6255b.m16744m2(context), str, s70Var, 213806000);
            if (m14136a3 == null) {
                de0Var = null;
            } else {
                IInterface queryLocalInterface = m14136a3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
                de0Var = queryLocalInterface instanceof fe0 ? (fe0) queryLocalInterface : new de0(m14136a3);
            }
            return de0Var;
        } catch (RemoteException | zzcgw e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            return null;
        }
    }
}
