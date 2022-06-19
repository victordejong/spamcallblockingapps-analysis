package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v00.class */
public abstract class v00 extends BinderC6649k2 implements w00 {
    /* renamed from: E6 */
    public static w00 m10148E6(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
        return queryLocalInterface instanceof w00 ? (w00) queryLocalInterface : new u00(iBinder);
    }
}
