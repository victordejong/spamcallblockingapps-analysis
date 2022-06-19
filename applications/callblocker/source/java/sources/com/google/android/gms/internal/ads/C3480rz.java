package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.rz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rz.class */
public final class C3480rz extends dkj implements AbstractC3479ry {
    public C3480rz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3479ry
    /* renamed from: a */
    public final void mo7202a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3479ry
    /* renamed from: a */
    public final void mo7201a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(4, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3479ry
    /* renamed from: a */
    public final void mo7200a(AbstractC3474rt abstractC3474rt) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3474rt);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3479ry
    /* renamed from: b */
    public final void mo7199b() {
        m9328b(2, m9326y());
    }
}
