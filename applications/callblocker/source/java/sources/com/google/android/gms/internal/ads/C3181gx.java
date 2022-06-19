package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.gx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gx.class */
public final class C3181gx extends dkj implements AbstractC3179gv {
    public C3181gx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3179gv
    /* renamed from: a */
    public final void mo7806a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3179gv
    /* renamed from: a */
    public final void mo7805a(AbstractC3173gp abstractC3173gp) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3173gp);
        m9328b(1, m9326y);
    }
}
