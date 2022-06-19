package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzy.class */
public final class zzbzy extends zzadk implements zzbzz {
    public static zzbzz zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
        return queryLocalInterface instanceof zzbzz ? (zzbzz) queryLocalInterface : new zzbzx(iBinder);
    }
}
