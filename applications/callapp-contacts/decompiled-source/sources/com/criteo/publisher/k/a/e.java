package com.criteo.publisher.k.a;

import com.criteo.publisher.m0.q;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/e.class */
final class e implements g {

    /* renamed from: a  reason: collision with root package name */
    private final q f17401a;

    public e(q qVar) {
        this.f17401a = qVar;
    }

    @Override // com.criteo.publisher.k.a.g
    public final String a() {
        return this.f17401a.a("IABConsent_ConsentString", "");
    }

    @Override // com.criteo.publisher.k.a.g
    public final String b() {
        return this.f17401a.a("IABConsent_SubjectToGDPR", "");
    }

    @Override // com.criteo.publisher.k.a.g
    public final Integer c() {
        return 1;
    }

    public final boolean d() {
        return !b().isEmpty() || !a().isEmpty();
    }
}
