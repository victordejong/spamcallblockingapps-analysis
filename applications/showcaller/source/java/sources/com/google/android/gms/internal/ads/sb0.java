package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sb0.class */
public final class sb0 extends BinderC6649k2 implements tb0 {
    /* renamed from: E6 */
    public static tb0 m11089E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
        return queryLocalInterface instanceof tb0 ? (tb0) queryLocalInterface : new rb0(iBinder);
    }
}
