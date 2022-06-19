package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* renamed from: com.google.android.gms.internal.ads.dl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dl.class */
public final class C1703dl {
    /* renamed from: a */
    public static final AbstractC1923rk m7729a(Context context, String str, AbstractC1767he abstractC1767he) {
        AbstractC1923rk abstractC1923rk;
        try {
            IBinder w4 = ((vk) C1947so.m5642a(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", cl.a)).w4(b.g3(context), str, abstractC1767he, 210890000);
            if (w4 == null) {
                abstractC1923rk = null;
            } else {
                pk queryLocalInterface = w4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
                abstractC1923rk = queryLocalInterface instanceof AbstractC1923rk ? (AbstractC1923rk) queryLocalInterface : new pk(w4);
            }
            return abstractC1923rk;
        } catch (RemoteException | zzbbn e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            return null;
        }
    }
}
