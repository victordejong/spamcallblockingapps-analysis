package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0522h;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.C0525k;
import androidx.savedstate.C0657a;
import java.util.Map;
import java.util.Objects;
import p173n.C3686b;
/* renamed from: androidx.savedstate.b */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/b.class */
public final class C0660b {

    /* renamed from: a */
    public final AbstractC0661c f2564a;

    /* renamed from: b */
    public final C0657a f2565b = new C0657a();

    public C0660b(AbstractC0661c abstractC0661c) {
        this.f2564a = abstractC0661c;
    }

    /* renamed from: a */
    public void m7511a(Bundle bundle) {
        AbstractC0516f lifecycle = this.f2564a.getLifecycle();
        if (((C0525k) lifecycle).f2038b == AbstractC0516f.EnumC0519c.INITIALIZED) {
            lifecycle.mo7992a(new Recreator(this.f2564a));
            final C0657a c0657a = this.f2565b;
            if (c0657a.f2561c) {
                throw new IllegalStateException("SavedStateRegistry was already restored.");
            }
            if (bundle != null) {
                c0657a.f2560b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            lifecycle.mo7992a(new AbstractC0522h() { // from class: androidx.savedstate.SavedStateRegistry$1
                @Override // androidx.lifecycle.AbstractC0522h
                /* renamed from: d */
                public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
                    if (enumC0518b == AbstractC0516f.EnumC0518b.ON_START) {
                        C0657a.this.f2563e = true;
                    } else if (enumC0518b != AbstractC0516f.EnumC0518b.ON_STOP) {
                    } else {
                        C0657a.this.f2563e = false;
                    }
                }
            });
            c0657a.f2561c = true;
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: b */
    public void m7510b(Bundle bundle) {
        C0657a c0657a = this.f2565b;
        Objects.requireNonNull(c0657a);
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = c0657a.f2560b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C3686b<String, C0657a.AbstractC0659b>.C3690d m1890b = c0657a.f2559a.m1890b();
        while (m1890b.hasNext()) {
            Map.Entry entry = (Map.Entry) m1890b.next();
            bundle2.putBundle((String) entry.getKey(), ((C0657a.AbstractC0659b) entry.getValue()).mo3371a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
