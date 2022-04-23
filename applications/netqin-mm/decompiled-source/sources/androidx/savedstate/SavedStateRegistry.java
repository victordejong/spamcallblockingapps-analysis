package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import java.util.Map;
import p012b.p027c.p028a.p030b.C0751b;
import p012b.p068o.AbstractC1106d;
import p012b.p068o.AbstractC1109g;
import p012b.p124w.AbstractC1947b;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry.class */
public final class SavedStateRegistry {

    /* renamed from: a */
    public C0751b<String, AbstractC0535b> f2709a = new C0751b<>();

    /* renamed from: b */
    public Bundle f2710b;

    /* renamed from: c */
    public boolean f2711c;

    /* renamed from: d */
    public boolean f2712d;

    /* renamed from: androidx.savedstate.SavedStateRegistry$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$a.class */
    public interface AbstractC0534a {
        /* renamed from: a */
        void m37049a(AbstractC1947b bVar);
    }

    /* renamed from: androidx.savedstate.SavedStateRegistry$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$b.class */
    public interface AbstractC0535b {
        /* renamed from: a */
        Bundle m37048a();
    }

    /* renamed from: a */
    public Bundle m37050a(String str) {
        if (this.f2711c) {
            Bundle bundle = this.f2710b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f2710b.remove(str);
            if (this.f2710b.isEmpty()) {
                this.f2710b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: a */
    public void m37052a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f2710b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C0751b<String, AbstractC0535b>.C0755d b = this.f2709a.m36140b();
        while (b.hasNext()) {
            Map.Entry next = b.next();
            bundle2.putBundle((String) next.getKey(), ((AbstractC0535b) next.getValue()).m37048a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: a */
    public void m37051a(Lifecycle lifecycle, Bundle bundle) {
        if (!this.f2711c) {
            if (bundle != null) {
                this.f2710b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            lifecycle.mo34659a(new AbstractC1106d() { // from class: androidx.savedstate.SavedStateRegistry.1
                @Override // p012b.p068o.AbstractC1107e
                /* renamed from: a */
                public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        SavedStateRegistry.this.f2712d = true;
                    } else if (event == Lifecycle.Event.ON_STOP) {
                        SavedStateRegistry.this.f2712d = false;
                    }
                }
            });
            this.f2711c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }
}
