package com.b.a.a.a;

import b.e;
import com.b.a.p;
import com.b.a.r;
import com.b.a.x;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/k.class */
public final class k extends x {

    /* renamed from: a  reason: collision with root package name */
    private final p f3214a;

    /* renamed from: b  reason: collision with root package name */
    private final e f3215b;

    public k(p pVar, e eVar) {
        this.f3214a = pVar;
        this.f3215b = eVar;
    }

    @Override // com.b.a.x
    public final r a() {
        String a2 = this.f3214a.a("Content-Type");
        return a2 != null ? r.a(a2) : null;
    }

    @Override // com.b.a.x
    public final long b() {
        return j.a(this.f3214a);
    }

    @Override // com.b.a.x
    public final e c() {
        return this.f3215b;
    }
}
