package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgj.class */
public final class zzdgj implements zzdgu<Bundle> {

    /* renamed from: a */
    public final boolean f27285a;

    /* renamed from: b */
    public final boolean f27286b;

    /* renamed from: c */
    public final String f27287c;

    /* renamed from: d */
    public final boolean f27288d;

    /* renamed from: e */
    public final int f27289e;

    /* renamed from: f */
    public final int f27290f;

    /* renamed from: g */
    public final int f27291g;

    public zzdgj(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.f27285a = z;
        this.f27286b = z2;
        this.f27287c = str;
        this.f27288d = z3;
        this.f27289e = i;
        this.f27290f = i2;
        this.f27291g = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.f27287c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) zzwm.m11166e().m16921a(zzabb.f23911x1));
        bundle2.putInt("target_api", this.f27289e);
        bundle2.putInt("dv", this.f27290f);
        bundle2.putInt("lv", this.f27291g);
        Bundle a = zzdot.m13397a(bundle2, "sdk_env");
        a.putBoolean("mf", zzacw.f23994a.mo16862a().booleanValue());
        a.putBoolean("instant_app", this.f27285a);
        a.putBoolean("lite", this.f27286b);
        a.putBoolean("is_privileged_process", this.f27288d);
        bundle2.putBundle("sdk_env", a);
        Bundle a2 = zzdot.m13397a(a, "build_meta");
        a2.putString("cl", "330794610");
        a2.putString("rapid_rc", "dev");
        a2.putString("rapid_rollup", "HEAD");
        a.putBundle("build_meta", a2);
    }
}
