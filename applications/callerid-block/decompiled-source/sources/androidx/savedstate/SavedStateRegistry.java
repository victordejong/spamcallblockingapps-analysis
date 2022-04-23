package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.Recreator;
import d.b.a.b.b;
import java.util.Map;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry.class */
public final class SavedStateRegistry {

    /* renamed from: b */
    private Bundle f2537b;

    /* renamed from: c */
    private boolean f2538c;

    /* renamed from: d */
    private Recreator.a f2539d;

    /* renamed from: a */
    private b<String, AbstractC0470b> f2536a = new b<>();

    /* renamed from: e */
    boolean f2540e = true;

    /* renamed from: androidx.savedstate.SavedStateRegistry$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$a.class */
    public interface AbstractC0469a {
        /* renamed from: a */
        void m12226a(b bVar);
    }

    /* renamed from: androidx.savedstate.SavedStateRegistry$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$b.class */
    public interface AbstractC0470b {
        /* renamed from: a */
        Bundle m12225a();
    }

    /* renamed from: a */
    public Bundle m12231a(String str) {
        if (this.f2538c) {
            Bundle bundle = this.f2537b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f2537b.remove(str);
            if (this.f2537b.isEmpty()) {
                this.f2537b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m12230b(Lifecycle lifecycle, Bundle bundle) {
        if (!this.f2538c) {
            if (bundle != null) {
                this.f2537b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            lifecycle.m13019a(new 1(this));
            this.f2538c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m12229c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f2537b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        b.d p = this.f2536a.p();
        while (p.hasNext()) {
            Map.Entry entry = (Map.Entry) p.next();
            bundle2.putBundle((String) entry.getKey(), ((AbstractC0470b) entry.getValue()).m12225a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: d */
    public void m12228d(String str, AbstractC0470b bVar) {
        if (((AbstractC0470b) this.f2536a.x(str, bVar)) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    /* renamed from: e */
    public void m12227e(Class<? extends AbstractC0469a> cls) {
        if (this.f2540e) {
            if (this.f2539d == null) {
                this.f2539d = new Recreator.a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.f2539d.b(cls.getName());
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        } else {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }
}
