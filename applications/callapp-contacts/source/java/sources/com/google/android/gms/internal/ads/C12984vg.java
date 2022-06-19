package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* renamed from: com.google.android.gms.internal.ads.vg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vg.class */
public final class C12984vg {
    /* renamed from: a */
    public static AbstractC12967uq m14085a(Context context, String str, AbstractC12746mm abstractC12746mm) {
        try {
            IBinder mo14088a = ((AbstractC12973uw) C13086yz.m13904a(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", C12983vf.f49904a)).mo14088a(BinderC12129d.m18979a(context), str, abstractC12746mm);
            if (mo14088a == null) {
                return null;
            }
            IInterface queryLocalInterface = mo14088a.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return queryLocalInterface instanceof AbstractC12967uq ? (AbstractC12967uq) queryLocalInterface : new C12969us(mo14088a);
        } catch (RemoteException | zzbap e) {
            C13088za.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
