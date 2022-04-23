package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarl.class */
public final class zzarl extends zzgt implements zzari {
    /* renamed from: a */
    public static zzari m16396a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
        return queryLocalInterface instanceof zzari ? (zzari) queryLocalInterface : new zzark(iBinder);
    }
}
