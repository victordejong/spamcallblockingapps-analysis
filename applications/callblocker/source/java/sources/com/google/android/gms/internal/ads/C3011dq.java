package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.dq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dq.class */
public final class C3011dq extends dkj implements AbstractC3007do {
    public C3011dq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3007do
    /* renamed from: a */
    public final void mo7861a(AbstractC3015du abstractC3015du) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3015du);
        m9328b(1, m9326y);
    }
}
