package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.tu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tu.class */
public final class C3529tu extends dkj implements AbstractC3527ts {
    public C3529tu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3527ts
    /* renamed from: a */
    public final void mo7121a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3527ts
    /* renamed from: a */
    public final void mo7120a(String str, String str2) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3527ts
    /* renamed from: a */
    public final void mo7119a(String str, String str2, Bundle bundle) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9322a(m9326y, bundle);
        m9328b(3, m9326y);
    }
}
