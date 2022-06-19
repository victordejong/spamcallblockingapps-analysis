package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nd1.class */
public final class nd1 implements n20<Object> {

    /* renamed from: a */
    private final WeakReference<qd1> f27080a;

    public /* synthetic */ nd1(qd1 qd1Var, pd1 pd1Var) {
        this.f27080a = new WeakReference<>(qd1Var);
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        w21 w21Var;
        oa1 oa1Var;
        qd1 qd1Var = this.f27080a.get();
        if (qd1Var == null) {
            return;
        }
        w21Var = qd1Var.f28418h;
        w21Var.mo7877z0();
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25660b7)).booleanValue()) {
            return;
        }
        oa1Var = qd1Var.f28419i;
        oa1Var.mo7917b();
    }
}
