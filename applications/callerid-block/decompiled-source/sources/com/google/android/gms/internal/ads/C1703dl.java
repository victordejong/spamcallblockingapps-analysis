package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC1632a;
import com.google.android.gms.dynamic.b;
/* renamed from: com.google.android.gms.internal.ads.dl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dl.class */
public final class C1703dl {
    /* renamed from: a */
    public static final AbstractC1923rk m7729a(Context context, String str, AbstractC1767he heVar) {
        AbstractC1632a g3 = b.g3(context);
        AbstractC1923rk rkVar = null;
        try {
            IBinder w4 = ((vk) C1947so.m5642a(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", cl.a)).w4(g3, str, heVar, 210890000);
            if (w4 != null) {
                pk queryLocalInterface = w4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
                rkVar = queryLocalInterface instanceof AbstractC1923rk ? (AbstractC1923rk) queryLocalInterface : new pk(w4);
            }
            return rkVar;
        } catch (RemoteException | zzbbn e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            return null;
        }
    }
}
