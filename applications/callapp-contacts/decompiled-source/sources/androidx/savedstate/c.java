package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.j;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final b f5612a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final d f5613b;

    private c(d dVar) {
        this.f5613b = dVar;
    }

    public static c a(d dVar) {
        return new c(dVar);
    }

    public final void a(Bundle bundle) {
        j lifecycle = this.f5613b.getLifecycle();
        if (lifecycle.getCurrentState() == j.b.INITIALIZED) {
            lifecycle.addObserver(new Recreator(this.f5613b));
            this.f5612a.a(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    public final void b(Bundle bundle) {
        this.f5612a.a(bundle);
    }
}
