package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.mk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mk.class */
public final class C3330mk extends dkj implements AbstractC3328mi {
    public C3330mk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3328mi
    /* renamed from: a */
    public final void mo7462a() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3328mi
    /* renamed from: a */
    public final void mo7461a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(3, m9326y);
    }
}
