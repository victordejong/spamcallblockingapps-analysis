package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awq.class */
public final class awq implements dsi<arn> {

    /* renamed from: a  reason: collision with root package name */
    private final awm f23958a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Set<ayi<arp>>> f23959b;

    private awq(awm awmVar, dsv<Set<ayi<arp>>> dsvVar) {
        this.f23958a = awmVar;
        this.f23959b = dsvVar;
    }

    public static awq a(awm awmVar, dsv<Set<ayi<arp>>> dsvVar) {
        return new awq(awmVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        awm awmVar = this.f23958a;
        Set<ayi<arp>> a2 = this.f23959b.a();
        if (awmVar.n == null) {
            awmVar.n = new arn(a2);
        }
        return (arn) dso.b(awmVar.n);
    }
}
