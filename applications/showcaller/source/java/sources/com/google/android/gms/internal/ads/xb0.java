package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xb0.class */
public final class xb0 extends BinderC6649k2 implements yb0 {
    /* renamed from: E6 */
    public static yb0 m9295E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        return queryLocalInterface instanceof yb0 ? (yb0) queryLocalInterface : new wb0(iBinder);
    }
}
