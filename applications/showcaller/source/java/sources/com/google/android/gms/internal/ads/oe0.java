package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oe0.class */
public final class oe0 extends C6612j2 implements IInterface {
    public oe0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    /* renamed from: a3 */
    public final void m12691a3(ce0 ce0Var, String str, String str2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, ce0Var);
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        m14187J0(2, m14186c0);
    }
}
