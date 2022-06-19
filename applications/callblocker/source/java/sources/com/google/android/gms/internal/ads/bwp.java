package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwp.class */
public final class bwp implements cae<Bundle> {

    /* renamed from: a */
    private final double f12410a;

    /* renamed from: b */
    private final boolean f12411b;

    public bwp(double d, boolean z) {
        this.f12410a = d;
        this.f12411b = z;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle m11308a = chm.m11308a(bundle2, "device");
        bundle2.putBundle("device", m11308a);
        Bundle m11308a2 = chm.m11308a(m11308a, "battery");
        m11308a.putBundle("battery", m11308a2);
        m11308a2.putBoolean("is_charging", this.f12411b);
        m11308a2.putDouble("battery_level", this.f12410a);
    }
}
