package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgm.class */
public final class cgm implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f25795a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f25796b;

    /* renamed from: c  reason: collision with root package name */
    private final String f25797c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f25798d;
    private final int e;
    private final int f;
    private final int g;

    public cgm(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.f25795a = z;
        this.f25796b = z2;
        this.f25797c = str;
        this.f25798d = z3;
        this.e = i;
        this.f = i2;
        this.g = i3;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.f25797c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) ekb.e().a(aq.bQ));
        bundle2.putInt("target_api", this.e);
        bundle2.putInt("dv", this.f);
        bundle2.putInt("lv", this.g);
        Bundle a2 = cpw.a(bundle2, "sdk_env");
        a2.putBoolean("mf", cp.f26200a.a().booleanValue());
        a2.putBoolean("instant_app", this.f25795a);
        a2.putBoolean("lite", this.f25796b);
        a2.putBoolean("is_privileged_process", this.f25798d);
        bundle2.putBundle("sdk_env", a2);
        Bundle a3 = cpw.a(a2, "build_meta");
        a3.putString("cl", "360757573");
        a3.putString("rapid_rc", "dev");
        a3.putString("rapid_rollup", "HEAD");
        a2.putBundle("build_meta", a3);
    }
}
