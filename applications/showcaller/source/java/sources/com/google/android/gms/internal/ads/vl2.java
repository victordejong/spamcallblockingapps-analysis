package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vl2.class */
public final class vl2 {

    /* renamed from: a */
    private final HashMap<zzfcg, ul2<?, ?>> f31239a = new HashMap<>();

    /* renamed from: a */
    public final <R extends g21<AdT>, AdT extends xy0> ul2<R, AdT> m9936a(zzfcg zzfcgVar, Context context, el2 el2Var, bm2<R, AdT> bm2Var) {
        ul2<R, AdT> ul2Var = (ul2<R, AdT>) this.f31239a.get(zzfcgVar);
        if (ul2Var == null) {
            kl2 kl2Var = new kl2(zzfcj.m7873k0(zzfcgVar, context));
            ul2<R, AdT> ul2Var2 = new ul2<>(kl2Var, new dm2(kl2Var, el2Var, bm2Var));
            this.f31239a.put(zzfcgVar, ul2Var2);
            return ul2Var2;
        }
        return ul2Var;
    }
}
