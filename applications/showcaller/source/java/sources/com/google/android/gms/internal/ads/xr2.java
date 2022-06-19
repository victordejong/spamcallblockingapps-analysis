package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xr2.class */
public final class xr2 {

    /* renamed from: a */
    private final Context f32270a;

    /* renamed from: b */
    private final Looper f32271b;

    public xr2(Context context, Looper looper) {
        this.f32270a = context;
        this.f32271b = looper;
    }

    /* renamed from: a */
    public final void m9072a(String str) {
        ms2 m12538C = os2.m12538C();
        m12538C.m13089q(this.f32270a.getPackageName());
        m12538C.m13087s(2);
        js2 m13815C = ks2.m13815C();
        m13815C.m14050q(str);
        m13815C.m14049r(2);
        m12538C.m13088r(m13815C);
        new yr2(this.f32270a, this.f32271b, m12538C.m15512n()).m8709a();
    }
}
