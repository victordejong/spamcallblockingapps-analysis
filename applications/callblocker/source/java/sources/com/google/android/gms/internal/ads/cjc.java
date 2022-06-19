package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cjc.class */
public final class cjc {

    /* renamed from: a */
    private HashMap<cix, cjg<? extends amh>> f13163a = new HashMap<>();

    /* renamed from: a */
    public final <AdT extends amh> cjg<AdT> m11215a(cix cixVar, Context context, cik cikVar, cjo<AdT> cjoVar) {
        cjg<? extends amh> cjgVar = this.f13163a.get(cixVar);
        cjg<? extends amh> cjgVar2 = cjgVar;
        if (cjgVar == null) {
            ciq ciqVar = new ciq(ciu.m11220a(cixVar, context));
            cjgVar2 = new cjg<>(ciqVar, new cjh(ciqVar, cikVar, cjoVar));
            this.f13163a.put(cixVar, cjgVar2);
        }
        return (cjg<AdT>) cjgVar2;
    }
}
