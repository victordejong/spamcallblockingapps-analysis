package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.sc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sc.class */
public final class C3484sc extends dkj implements AbstractC3485sd {
    public C3484sc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3485sd
    /* renamed from: a */
    public final void mo7196a(AbstractC3474rt abstractC3474rt, String str, String str2) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3474rt);
        m9326y.writeString(str);
        m9326y.writeString(str2);
        m9328b(2, m9326y);
    }
}
