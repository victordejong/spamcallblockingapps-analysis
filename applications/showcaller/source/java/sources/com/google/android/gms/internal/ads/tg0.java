package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tg0.class */
public final class tg0 extends C6612j2 implements vg0 {
    public tg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.vg0
    /* renamed from: N1 */
    public final void mo10027N1(String str, String str2, Bundle bundle) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        C6686l2.m13743d(m14186c0, bundle);
        m14187J0(3, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.vg0
    /* renamed from: r */
    public final void mo10026r(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        m14187J0(2, m14186c0);
    }
}
