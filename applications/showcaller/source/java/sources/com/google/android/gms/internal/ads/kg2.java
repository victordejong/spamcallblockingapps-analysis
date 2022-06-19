package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kg2.class */
public final class kg2 implements nu2<zzeap, ng2> {

    /* renamed from: a */
    final /* synthetic */ og2 f25211a;

    public kg2(og2 og2Var) {
        this.f25211a = og2Var;
    }

    @Override // com.google.android.gms.internal.ads.nu2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ ng2 mo8501a(zzeap zzeapVar) {
        rl2 m12672e;
        ng2 ng2Var;
        ei0.m15466d("", zzeapVar);
        C5722o1.m17990k("Failed to get a cache key, reverting to legacy flow.");
        og2 og2Var = this.f25211a;
        m12672e = og2Var.m12672e();
        og2Var.f27531d = new ng2(null, m12672e, null);
        ng2Var = this.f25211a.f27531d;
        return ng2Var;
    }
}
