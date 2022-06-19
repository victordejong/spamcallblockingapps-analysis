package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z70.class */
public final class z70 extends C6612j2 implements b80 {
    public z70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.b80
    /* renamed from: a */
    public final AbstractC6253a mo8498a() {
        Parcel m14188D0 = m14188D0(1, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }

    @Override // com.google.android.gms.internal.ads.b80
    /* renamed from: d */
    public final boolean mo8497d() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }
}
