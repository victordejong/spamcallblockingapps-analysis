package p012b.p063m.p064a;

import androidx.lifecycle.Lifecycle;
import p012b.p068o.AbstractC1109g;
import p012b.p068o.C1110h;
/* renamed from: b.m.a.n */
/* loaded from: classes-dex2jar.jar:b/m/a/n.class */
public class C1096n implements AbstractC1109g {

    /* renamed from: a */
    public C1110h f4596a = null;

    @Override // p012b.p068o.AbstractC1109g
    /* renamed from: a */
    public Lifecycle mo34644a() {
        m34681c();
        return this.f4596a;
    }

    /* renamed from: a */
    public void m34682a(Lifecycle.Event event) {
        this.f4596a.m34662a(event);
    }

    /* renamed from: c */
    public void m34681c() {
        if (this.f4596a == null) {
            this.f4596a = new C1110h(this);
        }
    }

    /* renamed from: d */
    public boolean m34680d() {
        return this.f4596a != null;
    }
}
