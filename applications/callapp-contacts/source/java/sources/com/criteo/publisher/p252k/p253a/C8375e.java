package com.criteo.publisher.p252k.p253a;

import com.criteo.publisher.p256m0.C8446q;
/* renamed from: com.criteo.publisher.k.a.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/e.class */
final class C8375e implements AbstractC8377g {

    /* renamed from: a */
    private final C8446q f30064a;

    public C8375e(C8446q c8446q) {
        this.f30064a = c8446q;
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8377g
    /* renamed from: a */
    public final String mo25766a() {
        return this.f30064a.m25671a("IABConsent_ConsentString", "");
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8377g
    /* renamed from: b */
    public final String mo25765b() {
        return this.f30064a.m25671a("IABConsent_SubjectToGDPR", "");
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8377g
    /* renamed from: c */
    public final Integer mo25764c() {
        return 1;
    }

    /* renamed from: d */
    public final boolean m25768d() {
        return !mo25765b().isEmpty() || !mo25766a().isEmpty();
    }
}
