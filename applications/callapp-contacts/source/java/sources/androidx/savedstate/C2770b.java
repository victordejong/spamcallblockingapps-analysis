package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC1251h;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1263p;
import androidx.p010a.p011a.p013b.C0105b;
import androidx.savedstate.Recreator;
import java.util.Map;
/* renamed from: androidx.savedstate.b */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/b.class */
public final class C2770b {

    /* renamed from: c */
    private Bundle f10493c;

    /* renamed from: d */
    private boolean f10494d;

    /* renamed from: e */
    private Recreator.C2767a f10495e;

    /* renamed from: b */
    private C0105b<String, AbstractC2772b> f10492b = new C0105b<>();

    /* renamed from: a */
    boolean f10491a = true;

    /* renamed from: androidx.savedstate.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/b$a.class */
    public interface AbstractC2771a {
        /* renamed from: a */
        void mo39932a(AbstractC2774d abstractC2774d);
    }

    /* renamed from: androidx.savedstate.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/b$b.class */
    public interface AbstractC2772b {
        /* renamed from: a */
        Bundle mo39931a();
    }

    /* renamed from: a */
    public final Bundle m39934a(String str) {
        if (this.f10494d) {
            Bundle bundle = this.f10493c;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f10493c.remove(str);
            if (this.f10493c.isEmpty()) {
                this.f10493c = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: a */
    public final void m39937a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f10493c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C0105b<String, AbstractC2772b>.C0109d m46404a = this.f10492b.m46404a();
        while (m46404a.hasNext()) {
            Map.Entry next = m46404a.next();
            bundle2.putBundle((String) next.getKey(), ((AbstractC2772b) next.getValue()).mo39931a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: a */
    public final void m39936a(AbstractC1253j abstractC1253j, Bundle bundle) {
        if (!this.f10494d) {
            if (bundle != null) {
                this.f10493c = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            abstractC1253j.addObserver(new AbstractC1251h() { // from class: androidx.savedstate.SavedStateRegistry$1
                @Override // androidx.lifecycle.AbstractC1261n
                /* renamed from: a */
                public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                    if (enumC1255a == AbstractC1253j.EnumC1255a.ON_START) {
                        C2770b.this.f10491a = true;
                    } else if (enumC1255a != AbstractC1253j.EnumC1255a.ON_STOP) {
                    } else {
                        C2770b.this.f10491a = false;
                    }
                }
            });
            this.f10494d = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* renamed from: a */
    public final void m39935a(Class<? extends AbstractC2771a> cls) {
        if (this.f10491a) {
            if (this.f10495e == null) {
                this.f10495e = new Recreator.C2767a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.f10495e.m39938a(cls.getName());
                return;
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    /* renamed from: a */
    public final void m39933a(String str, AbstractC2772b abstractC2772b) {
        if (this.f10492b.mo46402a(str, abstractC2772b) == null) {
            return;
        }
        throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
    }
}
