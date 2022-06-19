package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aif.class */
public final class aif implements cqt<chd, chd> {

    /* renamed from: a */
    private Map<String, aii> f9725a;

    public aif(Map<String, aii> map) {
        this.f9725a = map;
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final /* synthetic */ crt<chd> mo7012a(chd chdVar) {
        chd chdVar2 = chdVar;
        for (cgz cgzVar : chdVar2.f13035b.f13026c) {
            if (this.f9725a.containsKey(cgzVar.f13022a)) {
                this.f9725a.get(cgzVar.f13022a).mo13094a(cgzVar.f13023b);
            }
        }
        return crg.m10778a(chdVar2);
    }
}
