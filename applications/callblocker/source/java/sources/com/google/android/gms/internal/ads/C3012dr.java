package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.dr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dr.class */
public final class C3012dr extends dkj implements AbstractC3008dp {
    public C3012dr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3008dp
    /* renamed from: a */
    public final boolean mo8830a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(2, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }
}
