package p012b.p124w;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistry;
/* renamed from: b.w.a */
/* loaded from: classes-dex2jar.jar:b/w/a.class */
public final class C1946a {

    /* renamed from: a */
    public final AbstractC1947b f7650a;

    /* renamed from: b */
    public final SavedStateRegistry f7651b = new SavedStateRegistry();

    public C1946a(AbstractC1947b bVar) {
        this.f7650a = bVar;
    }

    /* renamed from: a */
    public static C1946a m31508a(AbstractC1947b bVar) {
        return new C1946a(bVar);
    }

    /* renamed from: a */
    public SavedStateRegistry m31510a() {
        return this.f7651b;
    }

    /* renamed from: a */
    public void m31509a(Bundle bundle) {
        Lifecycle a = this.f7650a.mo34644a();
        if (a.mo34663a() == Lifecycle.State.INITIALIZED) {
            a.mo34659a(new Recreator(this.f7650a));
            this.f7651b.m37051a(a, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: b */
    public void m31507b(Bundle bundle) {
        this.f7651b.m37052a(bundle);
    }
}
