package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h00.class */
public final class h00 extends C6612j2 implements j00 {
    public h00(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.j00
    /* renamed from: w5 */
    public final void mo14250w5(AbstractC7237zz abstractC7237zz, String str) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC7237zz);
        m14186c0.writeString(str);
        m14187J0(1, m14186c0);
    }
}
