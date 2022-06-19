package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pd0.class */
public final class pd0 extends C6612j2 implements IInterface {
    public pd0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    /* renamed from: a3 */
    public final void m12308a3(nd0 nd0Var, String str, String str2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, nd0Var);
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        m14187J0(2, m14186c0);
    }
}
