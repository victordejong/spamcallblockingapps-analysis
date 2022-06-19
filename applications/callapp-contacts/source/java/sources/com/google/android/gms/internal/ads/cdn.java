package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdn.class */
public final class cdn implements cgy<Bundle> {

    /* renamed from: a */
    private final double f45579a;

    /* renamed from: b */
    private final boolean f45580b;

    public cdn(double d, boolean z) {
        this.f45579a = d;
        this.f45580b = z;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle m17352a = cpw.m17352a(bundle2, "device");
        bundle2.putBundle("device", m17352a);
        Bundle m17352a2 = cpw.m17352a(m17352a, "battery");
        m17352a.putBundle("battery", m17352a2);
        m17352a2.putBoolean("is_charging", this.f45580b);
        m17352a2.putDouble("battery_level", this.f45579a);
    }
}
