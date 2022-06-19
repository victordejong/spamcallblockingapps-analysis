package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w62.class */
public final class w62 implements va2<Bundle> {

    /* renamed from: a */
    public final double f31463a;

    /* renamed from: b */
    public final boolean f31464b;

    public w62(double d, boolean z) {
        this.f31463a = d;
        this.f31464b = z;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle m14101a = jk2.m14101a(bundle2, "device");
        bundle2.putBundle("device", m14101a);
        Bundle m14101a2 = jk2.m14101a(m14101a, "battery");
        m14101a.putBundle("battery", m14101a2);
        m14101a2.putBoolean("is_charging", this.f31464b);
        m14101a2.putDouble("battery_level", this.f31463a);
    }
}
