package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.ci */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ci.class */
public final class C2860ci extends dkj implements AbstractC2858cg {
    public C2860ci(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2858cg
    /* renamed from: a */
    public final void mo11262a() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2858cg
    /* renamed from: a */
    public final void mo11261a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2858cg
    /* renamed from: b */
    public final void mo11260b(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(3, m9326y);
    }
}
