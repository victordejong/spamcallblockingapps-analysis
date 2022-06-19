package androidx.appcompat.app;

import d.h.m.t;
import d.h.m.x;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$f.class */
class AppCompatDelegateImpl$f implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AppCompatDelegateImpl f264b;

    AppCompatDelegateImpl$f(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f264b = appCompatDelegateImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.f264b;
        appCompatDelegateImpl.r.showAtLocation(appCompatDelegateImpl.q, 55, 0, 0);
        this.f264b.X();
        if (!this.f264b.F0()) {
            this.f264b.q.setAlpha(1.0f);
            this.f264b.q.setVisibility(0);
            return;
        }
        this.f264b.q.setAlpha(0.0f);
        AppCompatDelegateImpl appCompatDelegateImpl2 = this.f264b;
        x d = t.d(appCompatDelegateImpl2.q);
        d.a(1.0f);
        appCompatDelegateImpl2.t = d;
        this.f264b.t.f(new a(this));
    }
}
