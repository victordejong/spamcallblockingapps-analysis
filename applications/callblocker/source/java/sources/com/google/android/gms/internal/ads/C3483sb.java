package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.sb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sb.class */
public final class C3483sb extends dkj implements AbstractC3482sa {
    public C3483sb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3482sa
    /* renamed from: a */
    public final void mo7198a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3482sa
    /* renamed from: a */
    public final void mo7197a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(2, m9326y);
    }
}
