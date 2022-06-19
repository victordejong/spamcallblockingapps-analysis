package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.rm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rm.class */
public final class BinderC12882rm extends dvd implements AbstractC12879rj {
    /* renamed from: a */
    public static AbstractC12879rj m14211a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager");
        return queryLocalInterface instanceof AbstractC12879rj ? (AbstractC12879rj) queryLocalInterface : new C12881rl(iBinder);
    }
}
