package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import androidx.lifecycle.p;
import androidx.savedstate.b;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements h {

    /* renamed from: a  reason: collision with root package name */
    private final d f5605a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator$a.class */
    public static final class a implements b.AbstractC0116b {

        /* renamed from: a  reason: collision with root package name */
        final Set<String> f5606a = new HashSet();

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(b bVar) {
            bVar.a("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.b.AbstractC0116b
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f5606a));
            return bundle;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(String str) {
            this.f5606a.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Recreator(d dVar) {
        this.f5605a = dVar;
    }

    @Override // androidx.lifecycle.n
    public final void a(p pVar, j.a aVar) {
        if (aVar == j.a.ON_CREATE) {
            pVar.getLifecycle().removeObserver(this);
            Bundle a2 = this.f5605a.getSavedStateRegistry().a("androidx.savedstate.Restarter");
            if (a2 != null) {
                ArrayList<String> stringArrayList = a2.getStringArrayList("classes_to_restore");
                if (stringArrayList != null) {
                    Iterator<String> it2 = stringArrayList.iterator();
                    while (it2.hasNext()) {
                        String next = it2.next();
                        try {
                            Class<? extends U> asSubclass = Class.forName(next, false, Recreator.class.getClassLoader()).asSubclass(b.a.class);
                            try {
                                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                                declaredConstructor.setAccessible(true);
                                try {
                                    ((b.a) declaredConstructor.newInstance(new Object[0])).a(this.f5605a);
                                } catch (Exception e) {
                                    throw new RuntimeException("Failed to instantiate ".concat(String.valueOf(next)), e);
                                }
                            } catch (NoSuchMethodException e2) {
                                throw new IllegalStateException("Class" + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                            }
                        } catch (ClassNotFoundException e3) {
                            throw new RuntimeException("Class " + next + " wasn't found", e3);
                        }
                    }
                    return;
                }
                throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
