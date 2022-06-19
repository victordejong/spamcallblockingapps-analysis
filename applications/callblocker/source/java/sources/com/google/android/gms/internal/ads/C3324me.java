package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.me */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/me.class */
public final class C3324me extends dkj implements AbstractC3322mc {
    public C3324me(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3322mc
    /* renamed from: a */
    public final void mo7466a() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3322mc
    /* renamed from: a */
    public final void mo7465a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(3, m9326y);
    }
}
