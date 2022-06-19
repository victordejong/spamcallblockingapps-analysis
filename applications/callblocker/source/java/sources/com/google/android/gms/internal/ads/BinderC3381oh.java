package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.oh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oh.class */
public final class BinderC3381oh extends dkl implements AbstractC3382oi {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.oi] */
    /* renamed from: a */
    public static AbstractC3382oi m7360a(IBinder iBinder) {
        C3384ok c3384ok;
        if (iBinder == null) {
            c3384ok = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
            c3384ok = queryLocalInterface instanceof AbstractC3382oi ? (AbstractC3382oi) queryLocalInterface : new C3384ok(iBinder);
        }
        return c3384ok;
    }
}
