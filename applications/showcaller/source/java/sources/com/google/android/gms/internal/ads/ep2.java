package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ep2.class */
public abstract class ep2 extends BinderC6649k2 implements fp2 {
    /* renamed from: E6 */
    public static fp2 m15406E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
        return queryLocalInterface instanceof fp2 ? (fp2) queryLocalInterface : new dp2(iBinder);
    }
}
