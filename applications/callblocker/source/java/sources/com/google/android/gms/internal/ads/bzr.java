package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzr.class */
public final class bzr implements cae<Bundle> {

    /* renamed from: a */
    private final boolean f12566a;

    /* renamed from: b */
    private final boolean f12567b;

    /* renamed from: c */
    private final String f12568c;

    /* renamed from: d */
    private final boolean f12569d;

    /* renamed from: e */
    private final int f12570e;

    /* renamed from: f */
    private final int f12571f;

    /* renamed from: g */
    private final int f12572g;

    public bzr(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.f12566a = z;
        this.f12567b = z2;
        this.f12568c = str;
        this.f12569d = z3;
        this.f12570e = i;
        this.f12571f = i2;
        this.f12572g = i3;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.f12568c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) dyx.m8158e().m7876a(edi.f16439bs));
        bundle2.putInt("target_api", this.f12570e);
        bundle2.putInt("dv", this.f12571f);
        bundle2.putInt("lv", this.f12572g);
        Bundle m11308a = chm.m11308a(bundle2, "sdk_env");
        m11308a.putBoolean("mf", C2787an.f10031a.mo13599a().booleanValue());
        m11308a.putBoolean("instant_app", this.f12566a);
        m11308a.putBoolean("lite", this.f12567b);
        m11308a.putBoolean("is_privileged_process", this.f12569d);
        bundle2.putBundle("sdk_env", m11308a);
        Bundle m11308a2 = chm.m11308a(m11308a, "build_meta");
        m11308a2.putString("cl", "305933803");
        m11308a2.putString("rapid_rc", "dev");
        m11308a2.putString("rapid_rollup", "HEAD");
        m11308a.putBundle("build_meta", m11308a2);
    }
}
