package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/og2.class */
public final class og2<R extends g21<? extends xy0>> {

    /* renamed from: a */
    private final jl2 f27528a;

    /* renamed from: b */
    private final R f27529b;

    /* renamed from: c */
    private final Executor f27530c;

    /* renamed from: d */
    private ng2 f27531d;

    public og2(jl2 jl2Var, R r, Executor executor) {
        this.f27528a = jl2Var;
        this.f27529b = r;
        this.f27530c = executor;
    }

    @Deprecated
    /* renamed from: e */
    public final rl2 m12672e() {
        xj2 mo8247Q = this.f27529b.mo8247Q();
        return this.f27528a.mo13868b(mo8247Q.f32077d, mo8247Q.f32079f, mo8247Q.f32083j);
    }

    /* renamed from: c */
    public final r03<ng2> m12674c() {
        r03 r03Var;
        ng2 ng2Var = this.f27531d;
        if (ng2Var == null) {
            if (!C6458ey.f22611a.m12799e().booleanValue()) {
                ng2 ng2Var2 = new ng2(null, m12672e(), null);
                this.f27531d = ng2Var2;
                r03Var = k03.m14003a(ng2Var2);
            } else {
                r03Var = k03.m13998f(k03.m13994j(a03.m16718E(this.f27529b.mo8231o().m16457f(this.f27528a.mo13869a())), new lg2(this), this.f27530c), zzeap.class, new kg2(this), this.f27530c);
            }
            return k03.m13994j(r03Var, jg2.f24866a, this.f27530c);
        }
        return k03.m14003a(ng2Var);
    }
}
