package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.mj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mj.class */
public final class C3329mj extends dkj implements AbstractC3327mh {
    public C3329mj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3327mh
    /* renamed from: a */
    public final void mo7464a(AbstractC3297le abstractC3297le) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3297le);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3327mh
    /* renamed from: a */
    public final void mo7463a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(2, m9326y);
    }
}
