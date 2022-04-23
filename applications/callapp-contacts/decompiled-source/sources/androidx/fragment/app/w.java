package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ac;
import androidx.lifecycle.ad;
import androidx.lifecycle.j;
import androidx.savedstate.b;
import androidx.savedstate.c;
import androidx.savedstate.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/w.class */
public final class w implements ad, d {

    /* renamed from: a  reason: collision with root package name */
    LifecycleRegistry f2378a = null;

    /* renamed from: b  reason: collision with root package name */
    c f2379b = null;

    /* renamed from: c  reason: collision with root package name */
    private final ac f2380c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(ac acVar) {
        this.f2380c = acVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f2378a == null) {
            this.f2378a = new LifecycleRegistry(this);
            this.f2379b = c.a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bundle bundle) {
        this.f2379b.b(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(j.a aVar) {
        this.f2378a.handleLifecycleEvent(aVar);
    }

    @Override // androidx.lifecycle.p
    public final j getLifecycle() {
        a();
        return this.f2378a;
    }

    @Override // androidx.savedstate.d
    public final b getSavedStateRegistry() {
        a();
        return this.f2379b.f5612a;
    }

    @Override // androidx.lifecycle.ad
    public final ac getViewModelStore() {
        a();
        return this.f2380c;
    }
}
