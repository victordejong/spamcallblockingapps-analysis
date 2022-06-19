package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cb0.class */
public abstract class cb0 extends BinderC6649k2 implements db0 {
    /* renamed from: E6 */
    public static db0 m16088E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        return queryLocalInterface instanceof db0 ? (db0) queryLocalInterface : new bb0(iBinder);
    }
}
