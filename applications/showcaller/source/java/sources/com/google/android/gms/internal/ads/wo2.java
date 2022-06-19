package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wo2.class */
public final class wo2 implements jo2 {

    /* renamed from: a */
    private final to2 f31645a;

    /* renamed from: b */
    private final ro2 f31646b;

    public wo2(to2 to2Var, ro2 ro2Var) {
        this.f31645a = to2Var;
        this.f31646b = ro2Var;
    }

    @Override // com.google.android.gms.internal.ads.jo2
    /* renamed from: a */
    public final String mo9503a(io2 io2Var) {
        to2 to2Var = this.f31645a;
        Map<String, String> m14329j = io2Var.m14329j();
        this.f31646b.m11339a(m14329j);
        return to2Var.m10593a(m14329j);
    }

    @Override // com.google.android.gms.internal.ads.jo2
    /* renamed from: b */
    public final void mo9502b(io2 io2Var) {
    }
}
