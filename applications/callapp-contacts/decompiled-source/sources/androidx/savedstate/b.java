package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import androidx.lifecycle.p;
import androidx.savedstate.Recreator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/b.class */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private Bundle f5610c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5611d;
    private Recreator.a e;

    /* renamed from: b  reason: collision with root package name */
    private androidx.a.a.b.b<String, AbstractC0116b> f5609b = new androidx.a.a.b.b<>();

    /* renamed from: a  reason: collision with root package name */
    boolean f5608a = true;

    /* loaded from: classes-dex2jar.jar:androidx/savedstate/b$a.class */
    public interface a {
        void a(d dVar);
    }

    /* renamed from: androidx.savedstate.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/b$b.class */
    public interface AbstractC0116b {
        Bundle a();
    }

    public final Bundle a(String str) {
        if (this.f5611d) {
            Bundle bundle = this.f5610c;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f5610c.remove(str);
            if (this.f5610c.isEmpty()) {
                this.f5610c = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f5610c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        androidx.a.a.b.b<String, AbstractC0116b>.d a2 = this.f5609b.a();
        while (a2.hasNext()) {
            Map.Entry next = a2.next();
            bundle2.putBundle((String) next.getKey(), ((AbstractC0116b) next.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(j jVar, Bundle bundle) {
        if (!this.f5611d) {
            if (bundle != null) {
                this.f5610c = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            jVar.addObserver(new h() { // from class: androidx.savedstate.SavedStateRegistry$1
                @Override // androidx.lifecycle.n
                public final void a(p pVar, j.a aVar) {
                    if (aVar == j.a.ON_START) {
                        b.this.f5608a = true;
                    } else if (aVar == j.a.ON_STOP) {
                        b.this.f5608a = false;
                    }
                }
            });
            this.f5611d = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    public final void a(Class<? extends a> cls) {
        if (this.f5608a) {
            if (this.e == null) {
                this.e = new Recreator.a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.e.a(cls.getName());
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        } else {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    public final void a(String str, AbstractC0116b bVar) {
        if (this.f5609b.a(str, bVar) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }
}
