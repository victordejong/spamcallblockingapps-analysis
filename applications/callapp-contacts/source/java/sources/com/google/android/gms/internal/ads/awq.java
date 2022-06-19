package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awq.class */
public final class awq implements dsi<arn> {

    /* renamed from: a */
    private final awm f43267a;

    /* renamed from: b */
    private final dsv<Set<ayi<arp>>> f43268b;

    private awq(awm awmVar, dsv<Set<ayi<arp>>> dsvVar) {
        this.f43267a = awmVar;
        this.f43268b = dsvVar;
    }

    /* renamed from: a */
    public static awq m18359a(awm awmVar, dsv<Set<ayi<arp>>> dsvVar) {
        return new awq(awmVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        awm awmVar = this.f43267a;
        Set<ayi<arp>> mo14005a = this.f43268b.mo14005a();
        if (awmVar.f43251n == null) {
            awmVar.f43251n = new arn(mo14005a);
        }
        return (arn) dso.m15764b(awmVar.f43251n);
    }
}
