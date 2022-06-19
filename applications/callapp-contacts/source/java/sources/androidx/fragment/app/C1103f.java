package androidx.fragment.app;

import androidx.core.p036e.C0833d;
/* renamed from: androidx.fragment.app.f */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f.class */
public final class C1103f {

    /* renamed from: a */
    final AbstractC1105h<?> f4356a;

    private C1103f(AbstractC1105h<?> abstractC1105h) {
        this.f4356a = abstractC1105h;
    }

    /* renamed from: a */
    public static C1103f m43620a(AbstractC1105h<?> abstractC1105h) {
        return new C1103f((AbstractC1105h) C0833d.m44409a(abstractC1105h, "callbacks == null"));
    }

    /* renamed from: a */
    public final void m43621a() {
        this.f4356a.f4362e.m43701i();
    }

    /* renamed from: b */
    public final boolean m43619b() {
        return this.f4356a.f4362e.m43733a(true);
    }
}
