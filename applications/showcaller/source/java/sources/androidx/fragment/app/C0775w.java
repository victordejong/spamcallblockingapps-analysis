package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0819u;
import androidx.lifecycle.C0798i;
import androidx.lifecycle.C0818t;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.AbstractC1047c;
import androidx.savedstate.C1046b;
import androidx.savedstate.SavedStateRegistry;
/* renamed from: androidx.fragment.app.w */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/w.class */
public class C0775w implements AbstractC1047c, AbstractC0819u {

    /* renamed from: d */
    private final Fragment f3646d;

    /* renamed from: e */
    private final C0818t f3647e;

    /* renamed from: f */
    private C0798i f3648f = null;

    /* renamed from: g */
    private C1046b f3649g = null;

    public C0775w(Fragment fragment, C0818t c0818t) {
        this.f3646d = fragment;
        this.f3647e = c0818t;
    }

    @Override // androidx.lifecycle.AbstractC0797h
    /* renamed from: a */
    public Lifecycle mo32372a() {
        m32447d();
        return this.f3648f;
    }

    /* renamed from: b */
    public void m32448b(Lifecycle.Event event) {
        this.f3648f.m32391h(event);
    }

    /* renamed from: d */
    public void m32447d() {
        if (this.f3648f == null) {
            this.f3648f = new C0798i(this);
            this.f3649g = C1046b.m31184a(this);
        }
    }

    /* renamed from: e */
    public boolean m32446e() {
        return this.f3648f != null;
    }

    /* renamed from: f */
    public void m32445f(Bundle bundle) {
        this.f3649g.m31182c(bundle);
    }

    /* renamed from: g */
    public void m32444g(Bundle bundle) {
        this.f3649g.m31181d(bundle);
    }

    /* renamed from: h */
    public void m32443h(Lifecycle.State state) {
        this.f3648f.m32384o(state);
    }

    @Override // androidx.lifecycle.AbstractC0819u
    /* renamed from: p */
    public C0818t mo32344p() {
        m32447d();
        return this.f3647e;
    }

    @Override // androidx.savedstate.AbstractC1047c
    /* renamed from: r */
    public SavedStateRegistry mo31180r() {
        m32447d();
        return this.f3649g.m31183b();
    }
}
