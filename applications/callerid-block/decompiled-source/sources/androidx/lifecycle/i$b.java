package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/i$b.class */
class i$b {

    /* renamed from: a */
    Lifecycle.State f2059a;

    /* renamed from: b */
    f f2060b;

    i$b(AbstractC0359g gVar, Lifecycle.State state) {
        this.f2060b = C0361k.m12977f(gVar);
        this.f2059a = state;
    }

    /* renamed from: a */
    void m12983a(AbstractC0360h hVar, Lifecycle.Event event) {
        Lifecycle.State h = i.h(event);
        this.f2059a = i.l(this.f2059a, h);
        this.f2060b.d(hVar, event);
        this.f2059a = h;
    }
}
