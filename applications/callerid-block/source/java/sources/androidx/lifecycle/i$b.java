package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/i$b.class */
class i$b {

    /* renamed from: a */
    Lifecycle.State f2059a;

    /* renamed from: b */
    f f2060b;

    i$b(AbstractC0359g abstractC0359g, Lifecycle.State state) {
        this.f2060b = C0361k.m12977f(abstractC0359g);
        this.f2059a = state;
    }

    /* renamed from: a */
    void m12983a(AbstractC0360h abstractC0360h, Lifecycle.Event event) {
        Lifecycle.State h = i.h(event);
        this.f2059a = i.l(this.f2059a, h);
        this.f2060b.d(abstractC0360h, event);
        this.f2059a = h;
    }
}
