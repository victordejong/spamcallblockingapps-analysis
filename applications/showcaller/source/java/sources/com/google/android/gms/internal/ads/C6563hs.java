package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.hs */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hs.class */
public final class C6563hs extends C6612j2 implements AbstractC6638js {
    public C6563hs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6638js
    /* renamed from: b */
    public final void mo11828b() {
        m14187J0(1, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6638js
    /* renamed from: l2 */
    public final void mo11827l2(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(2, m14186c0);
    }
}
