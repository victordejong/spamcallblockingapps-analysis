package androidx.fragment.app;

import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0903k;
import androidx.lifecycle.C0904l;
/* renamed from: androidx.fragment.app.p */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p.class */
public class C0755p implements AbstractC0903k {

    /* renamed from: a */
    private C0904l f2506a = null;

    /* renamed from: a */
    public void m5411a() {
        if (this.f2506a == null) {
            this.f2506a = new C0904l(this);
        }
    }

    /* renamed from: a */
    public void m5410a(AbstractC0896g.EnumC0897a enumC0897a) {
        this.f2506a.m5111a(enumC0897a);
    }

    /* renamed from: b */
    public boolean m5409b() {
        return this.f2506a != null;
    }

    @Override // androidx.lifecycle.AbstractC0903k
    public AbstractC0896g getLifecycle() {
        m5411a();
        return this.f2506a;
    }
}
