package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.rd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rd.class */
public final class C3458rd extends dkj implements AbstractC3456rb {
    public C3458rd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3456rb
    /* renamed from: a */
    public final void mo7261a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3456rb
    /* renamed from: a */
    public final void mo7260a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(7, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3456rb
    /* renamed from: a */
    public final void mo7258a(AbstractC3445qr abstractC3445qr) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3445qr);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3456rb
    /* renamed from: b */
    public final void mo7257b() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3456rb
    /* renamed from: c */
    public final void mo7256c() {
        m9328b(3, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3456rb
    /* renamed from: d */
    public final void mo7255d() {
        m9328b(4, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3456rb
    /* renamed from: e */
    public final void mo7254e() {
        m9328b(6, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3456rb
    /* renamed from: f */
    public final void mo7253f() {
        m9328b(8, m9326y());
    }
}
