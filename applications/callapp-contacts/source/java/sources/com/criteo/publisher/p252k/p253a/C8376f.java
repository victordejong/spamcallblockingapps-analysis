package com.criteo.publisher.p252k.p253a;

import com.criteo.publisher.p256m0.C8446q;
/* renamed from: com.criteo.publisher.k.a.f */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/f.class */
final class C8376f implements AbstractC8377g {

    /* renamed from: a */
    private final C8446q f30065a;

    public C8376f(C8446q c8446q) {
        this.f30065a = c8446q;
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8377g
    /* renamed from: a */
    public final String mo25766a() {
        return this.f30065a.m25671a("IABTCF_TCString", "");
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8377g
    /* renamed from: b */
    public final String mo25765b() {
        int m25672a = this.f30065a.m25672a("IABTCF_gdprApplies");
        return m25672a != -1 ? String.valueOf(m25672a) : "";
    }

    @Override // com.criteo.publisher.p252k.p253a.AbstractC8377g
    /* renamed from: c */
    public final Integer mo25764c() {
        return 2;
    }

    /* renamed from: d */
    public final boolean m25767d() {
        return !mo25765b().isEmpty() || !mo25766a().isEmpty();
    }
}
