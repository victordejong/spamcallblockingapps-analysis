package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.dl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dl.class */
public final class C3003dl extends dkj implements AbstractC2999dj {
    public C3003dl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2999dj
    /* renamed from: a */
    public final void mo9246a(dzn dznVar, AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, dznVar);
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(1, m9326y);
    }
}
