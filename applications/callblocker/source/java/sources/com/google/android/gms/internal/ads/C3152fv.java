package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.fv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fv.class */
public final class C3152fv extends dkj implements AbstractC3149fs {
    public C3152fv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3149fs
    /* renamed from: a */
    public final void mo7821a(C3143fm c3143fm, AbstractC3147fq abstractC3147fq) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, c3143fm);
        dkk.m9324a(m9326y, abstractC3147fq);
        m9327c(2, m9326y);
    }
}
