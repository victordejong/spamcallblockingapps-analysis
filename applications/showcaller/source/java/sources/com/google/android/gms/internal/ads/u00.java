package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u00.class */
public final class u00 extends C6612j2 implements w00 {
    public u00(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    @Override // com.google.android.gms.internal.ads.w00
    /* renamed from: U */
    public final boolean mo9815U(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        Parcel m14188D0 = m14188D0(2, m14186c0);
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }
}
