package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qn1.class */
public final class qn1 {

    /* renamed from: a */
    private final HashMap<zzdsv, pn1<? extends u30>> f8229a = new HashMap<>();

    /* renamed from: a */
    public final <AdT extends u30> pn1<AdT> m6087a(zzdsv zzdsvVar, Context context, zm1 zm1Var, xn1<AdT> xn1Var) {
        pn1<AdT> pn1Var = (pn1<AdT>) this.f8229a.get(zzdsvVar);
        if (pn1Var != null) {
            return pn1Var;
        }
        en1 en1Var = new en1(zzdsy.a(zzdsvVar, context));
        pn1<AdT> pn1Var2 = new pn1<>(en1Var, new zn1(en1Var, zm1Var, xn1Var));
        this.f8229a.put(zzdsvVar, pn1Var2);
        return pn1Var2;
    }
}
