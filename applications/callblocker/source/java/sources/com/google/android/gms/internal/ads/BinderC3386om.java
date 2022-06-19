package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.om */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/om.class */
public final class BinderC3386om extends dkl implements AbstractC3383oj {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.oj] */
    /* renamed from: a */
    public static AbstractC3383oj m7359a(IBinder iBinder) {
        C3385ol c3385ol;
        if (iBinder == null) {
            c3385ol = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager");
            c3385ol = queryLocalInterface instanceof AbstractC3383oj ? (AbstractC3383oj) queryLocalInterface : new C3385ol(iBinder);
        }
        return c3385ol;
    }
}
