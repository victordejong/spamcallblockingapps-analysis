package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.Recreator;
import java.util.Map;
import p020b.p029b.p030a.p032b.C1475b;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry.class */
public final class SavedStateRegistry {

    /* renamed from: b */
    private Bundle f4569b;

    /* renamed from: c */
    private boolean f4570c;

    /* renamed from: d */
    private Recreator.C1041a f4571d;

    /* renamed from: a */
    private C1475b<String, AbstractC1044b> f4568a = new C1475b<>();

    /* renamed from: e */
    boolean f4572e = true;

    /* renamed from: androidx.savedstate.SavedStateRegistry$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$a.class */
    public interface AbstractC1043a {
        /* renamed from: a */
        void mo31186a(AbstractC1047c abstractC1047c);
    }

    /* renamed from: androidx.savedstate.SavedStateRegistry$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$b.class */
    public interface AbstractC1044b {
        /* renamed from: a */
        Bundle mo31185a();
    }

    /* renamed from: a */
    public Bundle m31191a(String str) {
        if (this.f4570c) {
            Bundle bundle = this.f4569b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f4569b.remove(str);
            if (this.f4569b.isEmpty()) {
                this.f4569b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: b */
    public void m31190b(Lifecycle lifecycle, Bundle bundle) {
        if (!this.f4570c) {
            if (bundle != null) {
                this.f4569b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            lifecycle.mo32398a(new AbstractC0795f() { // from class: androidx.savedstate.SavedStateRegistry.1
                @Override // androidx.lifecycle.AbstractC0795f
                /* renamed from: c */
                public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        SavedStateRegistry.this.f4572e = true;
                    } else if (event != Lifecycle.Event.ON_STOP) {
                    } else {
                        SavedStateRegistry.this.f4572e = false;
                    }
                }
            });
            this.f4570c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* renamed from: c */
    public void m31189c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f4569b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C1475b<String, AbstractC1044b>.C1479d m29985e = this.f4568a.m29985e();
        while (m29985e.hasNext()) {
            Map.Entry next = m29985e.next();
            bundle2.putBundle((String) next.getKey(), ((AbstractC1044b) next.getValue()).mo31185a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: d */
    public void m31188d(String str, AbstractC1044b abstractC1044b) {
        if (this.f4568a.mo29982j(str, abstractC1044b) == null) {
            return;
        }
        throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
    }

    /* renamed from: e */
    public void m31187e(Class<? extends AbstractC1043a> cls) {
        if (this.f4572e) {
            if (this.f4571d == null) {
                this.f4571d = new Recreator.C1041a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.f4571d.m31192b(cls.getName());
                return;
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
}
