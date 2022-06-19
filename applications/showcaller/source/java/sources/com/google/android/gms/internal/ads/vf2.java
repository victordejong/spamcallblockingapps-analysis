package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g21;
import com.google.android.gms.internal.ads.xy0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vf2.class */
public final class vf2<R extends g21<AdT>, AdT extends xy0> implements bm2<R, AdT> {

    /* renamed from: a */
    private final sg2<R, ql2<R, AdT>> f31170a;

    public vf2(sg2<R, ql2<R, AdT>> sg2Var) {
        this.f31170a = sg2Var;
    }

    @Override // com.google.android.gms.internal.ads.bm2
    /* renamed from: a */
    public final void mo10032a(ql2<R, AdT> ql2Var) {
        ql2Var.f28549a = (R) ((sf2) this.f31170a).m11060b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.bm2
    /* renamed from: b */
    public final r03<ql2<R, AdT>> mo10031b(cm2<R, AdT> cm2Var) {
        wf2 wf2Var = (wf2) cm2Var;
        sg2<R, ql2<R, AdT>> sg2Var = this.f31170a;
        return ((sf2) sg2Var).m11059c(wf2Var.f31562b, wf2Var.f31561a, null);
    }
}
