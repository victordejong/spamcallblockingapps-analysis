package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.internal.ads.qp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qp.class */
public abstract class AbstractBinderC12858qp extends dvd implements AbstractC12859qq {
    /* renamed from: a */
    public static AbstractC12859qq m14230a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        return queryLocalInterface instanceof AbstractC12859qq ? (AbstractC12859qq) queryLocalInterface : new C12861qs(iBinder);
    }
}
