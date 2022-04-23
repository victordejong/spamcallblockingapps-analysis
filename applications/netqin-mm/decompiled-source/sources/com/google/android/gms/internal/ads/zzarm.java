package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarm.class */
public final class zzarm extends zzgt implements zzarn {
    /* renamed from: a */
    public static zzarn m16395a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager");
        return queryLocalInterface instanceof zzarn ? (zzarn) queryLocalInterface : new zzarp(iBinder);
    }
}
