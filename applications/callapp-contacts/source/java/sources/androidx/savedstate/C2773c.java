package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC1253j;
/* renamed from: androidx.savedstate.c */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/c.class */
public final class C2773c {

    /* renamed from: a */
    public final C2770b f10496a = new C2770b();

    /* renamed from: b */
    private final AbstractC2774d f10497b;

    private C2773c(AbstractC2774d abstractC2774d) {
        this.f10497b = abstractC2774d;
    }

    /* renamed from: a */
    public static C2773c m39929a(AbstractC2774d abstractC2774d) {
        return new C2773c(abstractC2774d);
    }

    /* renamed from: a */
    public final void m39930a(Bundle bundle) {
        AbstractC1253j lifecycle = this.f10497b.getLifecycle();
        if (lifecycle.getCurrentState() == AbstractC1253j.EnumC1256b.INITIALIZED) {
            lifecycle.addObserver(new Recreator(this.f10497b));
            this.f10496a.m39936a(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: b */
    public final void m39928b(Bundle bundle) {
        this.f10496a.m39937a(bundle);
    }
}
