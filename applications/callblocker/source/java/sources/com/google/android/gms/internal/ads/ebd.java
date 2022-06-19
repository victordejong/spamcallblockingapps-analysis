package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebd.class */
public final class ebd extends dkj implements ebb {
    public ebd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.ebb
    /* renamed from: a */
    public final void mo7909a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.ebb
    /* renamed from: a */
    public final void mo7908a(boolean z) {
        Parcel m9326y = m9326y();
        dkk.m9321a(m9326y, z);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.ebb
    /* renamed from: b */
    public final void mo7907b() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.ebb
    /* renamed from: c */
    public final void mo7906c() {
        m9328b(3, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.ebb
    /* renamed from: d */
    public final void mo7905d() {
        m9328b(4, m9326y());
    }
}
