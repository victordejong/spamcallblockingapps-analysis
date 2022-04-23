package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qp.class */
public abstract class qp extends dvd implements qq {
    public static qq a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        return queryLocalInterface instanceof qq ? (qq) queryLocalInterface : new qs(iBinder);
    }
}
