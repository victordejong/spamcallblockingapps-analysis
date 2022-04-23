package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
/* renamed from: androidx.savedstate.a */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/a.class */
public final class C0471a {

    /* renamed from: a */
    private final b f2541a;

    /* renamed from: b */
    private final SavedStateRegistry f2542b = new SavedStateRegistry();

    private C0471a(b bVar) {
        this.f2541a = bVar;
    }

    /* renamed from: a */
    public static C0471a m12224a(b bVar) {
        return new C0471a(bVar);
    }

    /* renamed from: b */
    public SavedStateRegistry m12223b() {
        return this.f2542b;
    }

    /* renamed from: c */
    public void m12222c(Bundle bundle) {
        Lifecycle a = this.f2541a.m12984a();
        if (a.m13018b() == Lifecycle.State.INITIALIZED) {
            a.m13019a(new Recreator(this.f2541a));
            this.f2542b.m12230b(a, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: d */
    public void m12221d(Bundle bundle) {
        this.f2542b.m12229c(bundle);
    }
}
