package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.pp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pp.class */
public final class C3416pp extends dkj implements AbstractC3414pn {
    public C3416pp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: a */
    public final C3409pi mo7338a(C3407pg c3407pg) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3407pg);
        Parcel m9329a = m9329a(1, m9326y);
        C3409pi c3409pi = (C3409pi) dkk.m9323a(m9329a, C3409pi.CREATOR);
        m9329a.recycle();
        return c3409pi;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: a */
    public final void mo7337a(C3407pg c3407pg, AbstractC3415po abstractC3415po) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3407pg);
        dkk.m9324a(m9326y, abstractC3415po);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: a */
    public final void mo7336a(C3423pw c3423pw, AbstractC3417pq abstractC3417pq) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3423pw);
        dkk.m9324a(m9326y, abstractC3417pq);
        m9328b(4, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: a */
    public final void mo7335a(String str, AbstractC3417pq abstractC3417pq) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3417pq);
        m9328b(7, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: b */
    public final void mo7334b(C3423pw c3423pw, AbstractC3417pq abstractC3417pq) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3423pw);
        dkk.m9324a(m9326y, abstractC3417pq);
        m9328b(5, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3414pn
    /* renamed from: c */
    public final void mo7333c(C3423pw c3423pw, AbstractC3417pq abstractC3417pq) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3423pw);
        dkk.m9324a(m9326y, abstractC3417pq);
        m9328b(6, m9326y);
    }
}
