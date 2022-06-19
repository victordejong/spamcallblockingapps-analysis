package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
/* renamed from: com.google.android.gms.internal.ads.ps */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ps.class */
public final class C3419ps extends dkj implements AbstractC3417pq {
    public C3419ps(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3417pq
    /* renamed from: a */
    public final void mo7332a(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, parcelFileDescriptor);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3417pq
    /* renamed from: a */
    public final void mo7331a(C3598wi c3598wi) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3598wi);
        m9328b(2, m9326y);
    }
}
