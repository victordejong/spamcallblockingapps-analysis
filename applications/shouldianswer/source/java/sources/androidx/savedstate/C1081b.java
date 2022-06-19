package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0896g;
/* renamed from: androidx.savedstate.b */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/b.class */
public final class C1081b {

    /* renamed from: a */
    private final AbstractC1082c f3394a;

    /* renamed from: b */
    private final C1078a f3395b = new C1078a();

    private C1081b(AbstractC1082c abstractC1082c) {
        this.f3394a = abstractC1082c;
    }

    /* renamed from: a */
    public static C1081b m4381a(AbstractC1082c abstractC1082c) {
        return new C1081b(abstractC1082c);
    }

    /* renamed from: a */
    public C1078a m4383a() {
        return this.f3395b;
    }

    /* renamed from: a */
    public void m4382a(Bundle bundle) {
        AbstractC0896g lifecycle = this.f3394a.getLifecycle();
        if (lifecycle.mo5112a() == AbstractC0896g.EnumC0898b.INITIALIZED) {
            lifecycle.mo5108a(new Recreator(this.f3394a));
            this.f3395b.m4387a(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: b */
    public void m4380b(Bundle bundle) {
        this.f3395b.m4388a(bundle);
    }
}
