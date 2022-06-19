package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC1400q;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vc0.class */
public final class vc0 {

    /* renamed from: a */
    private final Set<ne0<j90>> f8883a = new HashSet();

    /* renamed from: b */
    private final Set<ne0<la0>> f8884b = new HashSet();

    /* renamed from: c */
    private final Set<ne0<hz2>> f8885c = new HashSet();

    /* renamed from: d */
    private final Set<ne0<s70>> f8886d = new HashSet();

    /* renamed from: e */
    private final Set<ne0<k80>> f8887e = new HashSet();

    /* renamed from: f */
    private final Set<ne0<r90>> f8888f = new HashSet();

    /* renamed from: g */
    private final Set<ne0<f90>> f8889g = new HashSet();

    /* renamed from: h */
    private final Set<ne0<v70>> f8890h = new HashSet();

    /* renamed from: i */
    private final Set<ne0<zs1>> f8891i = new HashSet();

    /* renamed from: j */
    private final Set<ne0<pk2>> f8892j = new HashSet();

    /* renamed from: k */
    private final Set<ne0<g80>> f8893k = new HashSet();

    /* renamed from: l */
    private final Set<ne0<ca0>> f8894l = new HashSet();

    /* renamed from: m */
    private final Set<ne0<AbstractC1400q>> f8895m = new HashSet();

    /* renamed from: n */
    private ni1 f8896n;

    /* renamed from: b */
    public final vc0 m5289b(s70 s70Var, Executor executor) {
        this.f8886d.add(new ne0<>(s70Var, executor));
        return this;
    }

    /* renamed from: c */
    public final vc0 m5288c(f90 f90Var, Executor executor) {
        this.f8889g.add(new ne0<>(f90Var, executor));
        return this;
    }

    /* renamed from: d */
    public final vc0 m5287d(v70 v70Var, Executor executor) {
        this.f8890h.add(new ne0<>(v70Var, executor));
        return this;
    }

    /* renamed from: e */
    public final vc0 m5286e(g80 g80Var, Executor executor) {
        this.f8893k.add(new ne0<>(g80Var, executor));
        return this;
    }

    /* renamed from: f */
    public final vc0 m5285f(pk2 pk2Var, Executor executor) {
        this.f8892j.add(new ne0<>(pk2Var, executor));
        return this;
    }

    /* renamed from: g */
    public final vc0 m5284g(hz2 hz2Var, Executor executor) {
        this.f8885c.add(new ne0<>(hz2Var, executor));
        return this;
    }

    /* renamed from: h */
    public final vc0 m5283h(k80 k80Var, Executor executor) {
        this.f8887e.add(new ne0<>(k80Var, executor));
        return this;
    }

    /* renamed from: i */
    public final vc0 m5282i(r90 r90Var, Executor executor) {
        this.f8888f.add(new ne0<>(r90Var, executor));
        return this;
    }

    /* renamed from: j */
    public final vc0 m5281j(AbstractC1400q abstractC1400q, Executor executor) {
        this.f8895m.add(new ne0<>(abstractC1400q, executor));
        return this;
    }

    /* renamed from: k */
    public final vc0 m5280k(ca0 ca0Var, Executor executor) {
        this.f8894l.add(new ne0<>(ca0Var, executor));
        return this;
    }

    /* renamed from: l */
    public final vc0 m5279l(ni1 ni1Var) {
        this.f8896n = ni1Var;
        return this;
    }

    /* renamed from: m */
    public final vc0 m5278m(la0 la0Var, Executor executor) {
        this.f8884b.add(new ne0<>(la0Var, executor));
        return this;
    }

    /* renamed from: n */
    public final wc0 m5277n() {
        return new wc0(this, null);
    }
}
