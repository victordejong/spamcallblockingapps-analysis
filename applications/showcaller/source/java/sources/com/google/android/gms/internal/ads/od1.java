package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/od1.class */
public final class od1 implements n20<Object> {

    /* renamed from: a */
    private final WeakReference<qd1> f27504a;

    public /* synthetic */ od1(qd1 qd1Var, pd1 pd1Var) {
        this.f27504a = new WeakReference<>(qd1Var);
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        q31 q31Var;
        qd1 qd1Var = this.f27504a.get();
        if (qd1Var == null) {
            return;
        }
        q31Var = qd1Var.f28417g;
        q31Var.zza();
    }
}
