package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.savedstate.Recreator;
import java.util.Map;
import z2;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry.class */
public final class SavedStateRegistry {

    /* renamed from: b */
    public Bundle f1436b;

    /* renamed from: c */
    public boolean f1437c;

    /* renamed from: d */
    public Recreator.a f1438d;

    /* renamed from: a */
    public z2<String, AbstractC0191b> f1435a = new z2<>();

    /* renamed from: e */
    public boolean f1439e = true;

    /* renamed from: androidx.savedstate.SavedStateRegistry$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$a.class */
    public interface AbstractC0190a {
        /* renamed from: a */
        void m6053a(l10 l10Var);
    }

    /* renamed from: androidx.savedstate.SavedStateRegistry$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$b.class */
    public interface AbstractC0191b {
        /* renamed from: b */
        Bundle m6052b();
    }

    /* renamed from: a */
    public Bundle m6058a(String str) {
        if (this.f1437c) {
            Bundle bundle = this.f1436b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f1436b.remove(str);
            if (this.f1436b.isEmpty()) {
                this.f1436b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: b */
    public void m6057b(me meVar, Bundle bundle) {
        if (!this.f1437c) {
            if (bundle != null) {
                this.f1436b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            meVar.a(new 1(this));
            this.f1437c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* renamed from: c */
    public void m6056c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f1436b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        z2.d d = this.f1435a.d();
        while (d.hasNext()) {
            Map.Entry entry = (Map.Entry) d.next();
            bundle2.putBundle((String) entry.getKey(), ((AbstractC0191b) entry.getValue()).m6052b());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: d */
    public void m6055d(String str, AbstractC0191b abstractC0191b) {
        if (((AbstractC0191b) this.f1435a.g(str, abstractC0191b)) == null) {
            return;
        }
        throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
    }

    /* renamed from: e */
    public void m6054e(Class<? extends AbstractC0190a> cls) {
        if (this.f1439e) {
            if (this.f1438d == null) {
                this.f1438d = new Recreator.a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.f1438d.a(cls.getName());
                return;
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
}
