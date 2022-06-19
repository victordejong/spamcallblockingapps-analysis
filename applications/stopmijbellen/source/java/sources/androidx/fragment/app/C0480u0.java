package androidx.fragment.app;

import androidx.lifecycle.AbstractC0514d0;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.C0512c0;
import androidx.lifecycle.C0525k;
import androidx.savedstate.AbstractC0661c;
import androidx.savedstate.C0657a;
import androidx.savedstate.C0660b;
/* renamed from: androidx.fragment.app.u0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/u0.class */
public class C0480u0 implements AbstractC0661c, AbstractC0514d0 {

    /* renamed from: a */
    public final C0512c0 f1948a;

    /* renamed from: b */
    public C0525k f1949b = null;

    /* renamed from: c */
    public C0660b f1950c = null;

    public C0480u0(Fragment fragment, C0512c0 c0512c0) {
        this.f1948a = c0512c0;
    }

    /* renamed from: a */
    public void m8058a(AbstractC0516f.EnumC0518b enumC0518b) {
        C0525k c0525k = this.f1949b;
        c0525k.m7989d("handleLifecycleEvent");
        c0525k.m7986g(enumC0518b.m7994a());
    }

    /* renamed from: c */
    public void m8057c() {
        if (this.f1949b == null) {
            this.f1949b = new C0525k(this);
            this.f1950c = new C0660b(this);
        }
    }

    @Override // androidx.lifecycle.AbstractC0524j
    public AbstractC0516f getLifecycle() {
        m8057c();
        return this.f1949b;
    }

    @Override // androidx.savedstate.AbstractC0661c
    public C0657a getSavedStateRegistry() {
        m8057c();
        return this.f1950c.f2565b;
    }

    @Override // androidx.lifecycle.AbstractC0514d0
    public C0512c0 getViewModelStore() {
        m8057c();
        return this.f1948a;
    }
}
