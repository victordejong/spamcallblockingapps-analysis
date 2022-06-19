package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.dc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dc.class */
public final class C2953dc extends dkj implements AbstractC2950da {
    public C2953dc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2950da
    /* renamed from: a */
    public final void mo7883a(AbstractC2869cn abstractC2869cn) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2869cn);
        m9328b(1, m9326y);
    }
}
