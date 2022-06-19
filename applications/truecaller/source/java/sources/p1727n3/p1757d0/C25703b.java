package p1727n3.p1757d0;

import android.os.Bundle;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistry;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1746c.p1747a.p1749b.C25635b;
import p1727n3.p1757d0.C25700a;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
/* renamed from: n3.d0.b */
/* loaded from: classes-dex2jar.jar:n3/d0/b.class */
public final class C25703b {

    /* renamed from: a */
    public final AbstractC25704c f71993a;

    /* renamed from: b */
    public final C25700a f71994b = new C25700a();

    public C25703b(AbstractC25704c abstractC25704c) {
        this.f71993a = abstractC25704c;
    }

    /* renamed from: a */
    public void m3043a(Bundle bundle) {
        AbstractC27028u lifecycle = this.f71993a.getLifecycle();
        if (((C26994c0) lifecycle).f75501c == AbstractC27028u.EnumC27030b.INITIALIZED) {
            lifecycle.mo988a(new Recreator(this.f71993a));
            C25700a c25700a = this.f71994b;
            if (c25700a.f71990c) {
                throw new IllegalStateException("SavedStateRegistry was already restored.");
            }
            if (bundle != null) {
                c25700a.f71989b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            lifecycle.mo988a(new SavedStateRegistry.1(c25700a));
            c25700a.f71990c = true;
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: b */
    public void m3042b(Bundle bundle) {
        C25700a c25700a = this.f71994b;
        Objects.requireNonNull(c25700a);
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = c25700a.f71989b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C25635b<String, C25700a.AbstractC25702b>.C25637d m3106b = c25700a.f71988a.m3106b();
        while (m3106b.hasNext()) {
            Map.Entry entry = (Map.Entry) m3106b.next();
            bundle2.putBundle((String) entry.getKey(), ((C25700a.AbstractC25702b) entry.getValue()).mo990a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
