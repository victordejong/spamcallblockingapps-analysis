package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crn.class */
public final class crn {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<crf, crm<? extends anp>> f26309a = new HashMap<>();

    public final <AdT extends anp> crm<AdT> a(crf crfVar, Context context, cqs cqsVar, cru<AdT> cruVar) {
        crm<? extends anp> crmVar = this.f26309a.get(crfVar);
        crm<AdT> crmVar2 = (crm<AdT>) crmVar;
        if (crmVar == null) {
            cqy cqyVar = new cqy(zzdrc.zza(crfVar, context));
            crmVar2 = new crm<>(cqyVar, new crr(cqyVar, cqsVar, cruVar));
            this.f26309a.put(crfVar, crmVar2);
        }
        return crmVar2;
    }
}
