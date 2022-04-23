package com.criteo.publisher.k.a;

import com.criteo.publisher.m0.q;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/f.class */
final class f implements g {

    /* renamed from: a  reason: collision with root package name */
    private final q f17402a;

    public f(q qVar) {
        this.f17402a = qVar;
    }

    @Override // com.criteo.publisher.k.a.g
    public final String a() {
        return this.f17402a.a("IABTCF_TCString", "");
    }

    @Override // com.criteo.publisher.k.a.g
    public final String b() {
        int a2 = this.f17402a.a("IABTCF_gdprApplies");
        return a2 != -1 ? String.valueOf(a2) : "";
    }

    @Override // com.criteo.publisher.k.a.g
    public final Integer c() {
        return 2;
    }

    public final boolean d() {
        return !b().isEmpty() || !a().isEmpty();
    }
}
