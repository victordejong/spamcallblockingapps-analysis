package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgm.class */
public final class cgm implements cgy<Bundle> {

    /* renamed from: a */
    private final boolean f45738a;

    /* renamed from: b */
    private final boolean f45739b;

    /* renamed from: c */
    private final String f45740c;

    /* renamed from: d */
    private final boolean f45741d;

    /* renamed from: e */
    private final int f45742e;

    /* renamed from: f */
    private final int f45743f;

    /* renamed from: g */
    private final int f45744g;

    public cgm(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.f45738a = z;
        this.f45739b = z2;
        this.f45740c = str;
        this.f45741d = z3;
        this.f45742e = i;
        this.f45743f = i2;
        this.f45744g = i3;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.f45740c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) ekb.m14831e().m18571a(C12187aq.f42707bQ));
        bundle2.putInt("target_api", this.f45742e);
        bundle2.putInt("dv", this.f45743f);
        bundle2.putInt("lv", this.f45744g);
        Bundle m17352a = cpw.m17352a(bundle2, "sdk_env");
        m17352a.putBoolean("mf", C12281cp.f46297a.mo17481a().booleanValue());
        m17352a.putBoolean("instant_app", this.f45738a);
        m17352a.putBoolean("lite", this.f45739b);
        m17352a.putBoolean("is_privileged_process", this.f45741d);
        bundle2.putBundle("sdk_env", m17352a);
        Bundle m17352a2 = cpw.m17352a(m17352a, "build_meta");
        m17352a2.putString("cl", "360757573");
        m17352a2.putString("rapid_rc", "dev");
        m17352a2.putString("rapid_rollup", "HEAD");
        m17352a.putBundle("build_meta", m17352a2);
    }
}
