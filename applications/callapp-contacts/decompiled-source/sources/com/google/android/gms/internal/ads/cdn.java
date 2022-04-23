package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdn.class */
public final class cdn implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final double f25644a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f25645b;

    public cdn(double d2, boolean z) {
        this.f25644a = d2;
        this.f25645b = z;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle a2 = cpw.a(bundle2, "device");
        bundle2.putBundle("device", a2);
        Bundle a3 = cpw.a(a2, "battery");
        a2.putBundle("battery", a3);
        a3.putBoolean("is_charging", this.f25645b);
        a3.putDouble("battery_level", this.f25644a);
    }
}
