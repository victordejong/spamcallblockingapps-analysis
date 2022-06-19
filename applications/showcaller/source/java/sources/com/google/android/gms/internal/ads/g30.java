package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g30.class */
public abstract class g30 extends BinderC6649k2 implements h30 {
    /* renamed from: E6 */
    public static h30 m14988E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
        return queryLocalInterface instanceof h30 ? (h30) queryLocalInterface : new f30(iBinder);
    }
}
