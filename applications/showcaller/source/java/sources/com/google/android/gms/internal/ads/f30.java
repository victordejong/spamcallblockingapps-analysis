package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f30.class */
public final class f30 extends C6612j2 implements h30 {
    public f30(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
    }

    @Override // com.google.android.gms.internal.ads.h30
    /* renamed from: r */
    public final void mo14750r(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        m14187J0(1, m14186c0);
    }
}
