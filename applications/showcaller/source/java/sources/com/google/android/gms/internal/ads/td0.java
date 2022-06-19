package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/td0.class */
public abstract class td0 extends BinderC6649k2 implements ud0 {
    /* renamed from: E6 */
    public static ud0 m10718E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        return queryLocalInterface instanceof ud0 ? (ud0) queryLocalInterface : new sd0(iBinder);
    }
}
