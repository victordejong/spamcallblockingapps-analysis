package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.AbstractC1239ad;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.C1238ac;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.AbstractC2774d;
import androidx.savedstate.C2770b;
import androidx.savedstate.C2773c;
/* renamed from: androidx.fragment.app.w */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/w.class */
public final class C1142w implements AbstractC1239ad, AbstractC2774d {

    /* renamed from: a */
    LifecycleRegistry f4499a = null;

    /* renamed from: b */
    C2773c f4500b = null;

    /* renamed from: c */
    private final C1238ac f4501c;

    public C1142w(C1238ac c1238ac) {
        this.f4501c = c1238ac;
    }

    /* renamed from: a */
    public final void m43491a() {
        if (this.f4499a == null) {
            this.f4499a = new LifecycleRegistry(this);
            this.f4500b = C2773c.m39929a(this);
        }
    }

    /* renamed from: a */
    public final void m43490a(Bundle bundle) {
        this.f4500b.m39928b(bundle);
    }

    /* renamed from: a */
    public final void m43489a(AbstractC1253j.EnumC1255a enumC1255a) {
        this.f4499a.handleLifecycleEvent(enumC1255a);
    }

    @Override // androidx.lifecycle.AbstractC1263p
    public final AbstractC1253j getLifecycle() {
        m43491a();
        return this.f4499a;
    }

    @Override // androidx.savedstate.AbstractC2774d
    public final C2770b getSavedStateRegistry() {
        m43491a();
        return this.f4500b.f10496a;
    }

    @Override // androidx.lifecycle.AbstractC1239ad
    public final C1238ac getViewModelStore() {
        m43491a();
        return this.f4501c;
    }
}
