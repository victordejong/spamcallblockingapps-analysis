package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.gw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gw.class */
public final class C3180gw extends dkj implements AbstractC3178gu {
    public C3180gw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3178gu
    /* renamed from: a */
    public final void mo7808a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3178gu
    /* renamed from: a */
    public final void mo7807a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(2, m9326y);
    }
}
