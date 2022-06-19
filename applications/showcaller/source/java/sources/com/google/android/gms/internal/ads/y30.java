package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y30.class */
public final class y30 extends C6612j2 implements a40 {
    public y30(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.a40
    /* renamed from: p */
    public final void mo8968p(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        m14187J0(3, m14186c0);
    }
}
