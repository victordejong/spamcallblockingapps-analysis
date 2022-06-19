package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.mq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mq.class */
public final class C3336mq extends dkj implements AbstractC3334mo {
    public C3336mq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3334mo
    /* renamed from: a */
    public final void mo7459a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3334mo
    /* renamed from: b */
    public final void mo7458b(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(2, m9326y);
    }
}
