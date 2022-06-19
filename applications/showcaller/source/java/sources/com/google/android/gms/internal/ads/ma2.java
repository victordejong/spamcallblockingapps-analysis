package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.zhy.http.okhttp.OkHttpUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ma2.class */
public final class ma2 implements va2<Bundle> {

    /* renamed from: a */
    public final boolean f26499a;

    /* renamed from: b */
    public final boolean f26500b;

    /* renamed from: c */
    public final String f26501c;

    /* renamed from: d */
    public final boolean f26502d;

    /* renamed from: e */
    public final int f26503e;

    /* renamed from: f */
    public final int f26504f;

    /* renamed from: g */
    public final int f26505g;

    public ma2(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.f26499a = z;
        this.f26500b = z2;
        this.f26501c = str;
        this.f26502d = z3;
        this.f26503e = i;
        this.f26504f = i2;
        this.f26505g = i3;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.f26501c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) C7192yr.m8714c().m14263c(C6679kw.f25697g2));
        bundle2.putInt("target_api", this.f26503e);
        bundle2.putInt("dv", this.f26504f);
        bundle2.putInt("lv", this.f26505g);
        Bundle m14101a = jk2.m14101a(bundle2, "sdk_env");
        m14101a.putBoolean("mf", C7198yx.f32690a.m12799e().booleanValue());
        m14101a.putBoolean("instant_app", this.f26499a);
        m14101a.putBoolean("lite", this.f26500b);
        m14101a.putBoolean("is_privileged_process", this.f26502d);
        bundle2.putBundle("sdk_env", m14101a);
        Bundle m14101a2 = jk2.m14101a(m14101a, "build_meta");
        m14101a2.putString("cl", "407425155");
        m14101a2.putString("rapid_rc", "dev");
        m14101a2.putString("rapid_rollup", OkHttpUtils.METHOD.HEAD);
        m14101a.putBundle("build_meta", m14101a2);
    }
}
