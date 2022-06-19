package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crn.class */
public final class crn {

    /* renamed from: a */
    private HashMap<crf, crm<? extends anp>> f46437a = new HashMap<>();

    /* renamed from: a */
    public final <AdT extends anp> crm<AdT> m17294a(crf crfVar, Context context, cqs cqsVar, cru<AdT> cruVar) {
        crm<? extends anp> crmVar = this.f46437a.get(crfVar);
        crm<? extends anp> crmVar2 = crmVar;
        if (crmVar == null) {
            cqy cqyVar = new cqy(zzdrc.zza(crfVar, context));
            crmVar2 = new crm<>(cqyVar, new crr(cqyVar, cqsVar, cruVar));
            this.f46437a.put(crfVar, crmVar2);
        }
        return (crm<AdT>) crmVar2;
    }
}
