package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.qv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qv.class */
public final class C3449qv extends dkj implements AbstractC3450qw {
    public C3449qv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3450qw
    /* renamed from: a */
    public final void mo7290a(AbstractC3445qr abstractC3445qr, String str, String str2) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3445qr);
        m9326y.writeString(str);
        m9326y.writeString(str2);
        m9328b(2, m9326y);
    }
}
