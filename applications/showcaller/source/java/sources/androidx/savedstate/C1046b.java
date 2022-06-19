package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
/* renamed from: androidx.savedstate.b */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/b.class */
public final class C1046b {

    /* renamed from: a */
    private final AbstractC1047c f4574a;

    /* renamed from: b */
    private final SavedStateRegistry f4575b = new SavedStateRegistry();

    private C1046b(AbstractC1047c abstractC1047c) {
        this.f4574a = abstractC1047c;
    }

    /* renamed from: a */
    public static C1046b m31184a(AbstractC1047c abstractC1047c) {
        return new C1046b(abstractC1047c);
    }

    /* renamed from: b */
    public SavedStateRegistry m31183b() {
        return this.f4575b;
    }

    /* renamed from: c */
    public void m31182c(Bundle bundle) {
        Lifecycle mo32372a = this.f4574a.mo32372a();
        if (mo32372a.mo32397b() == Lifecycle.State.INITIALIZED) {
            mo32372a.mo32398a(new Recreator(this.f4574a));
            this.f4575b.m31190b(mo32372a, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: d */
    public void m31181d(Bundle bundle) {
        this.f4575b.m31189c(bundle);
    }
}
