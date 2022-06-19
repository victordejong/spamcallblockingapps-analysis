package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0864e;
/* renamed from: androidx.savedstate.b */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/b.class */
public final class C1062b {

    /* renamed from: a */
    private final AbstractC1063c f3604a;

    /* renamed from: b */
    private final C1059a f3605b = new C1059a();

    private C1062b(AbstractC1063c abstractC1063c) {
        this.f3604a = abstractC1063c;
    }

    /* renamed from: a */
    public static C1062b m18227a(AbstractC1063c abstractC1063c) {
        return new C1062b(abstractC1063c);
    }

    /* renamed from: a */
    public C1059a m18229a() {
        return this.f3605b;
    }

    /* renamed from: a */
    public void m18228a(Bundle bundle) {
        AbstractC0864e b = this.f3604a.mo19203b();
        if (b.mo19223a() != AbstractC0864e.EnumC0866b.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        b.mo19219a(new Recreator(this.f3604a));
        this.f3605b.m18233a(b, bundle);
    }

    /* renamed from: b */
    public void m18226b(Bundle bundle) {
        this.f3605b.m18234a(bundle);
    }
}
