package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.md */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/md.class */
public final class C3323md extends dkj implements AbstractC3321mb {
    public C3323md(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3321mb
    /* renamed from: a */
    public final void mo7468a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3321mb
    /* renamed from: a */
    public final void mo7467a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(2, m9326y);
    }
}
