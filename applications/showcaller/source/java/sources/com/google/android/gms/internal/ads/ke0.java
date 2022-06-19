package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ke0.class */
public final class ke0 extends C6612j2 implements me0 {
    public ke0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.me0
    /* renamed from: A */
    public final void mo10717A(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.me0
    /* renamed from: a */
    public final void mo10716a() {
        m14187J0(1, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.me0
    /* renamed from: x */
    public final void mo10715x(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(3, m14186c0);
    }
}
