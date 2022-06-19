package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC1251h;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1263p;
import androidx.savedstate.C2770b;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements AbstractC1251h {

    /* renamed from: a */
    private final AbstractC2774d f10488a;

    /* renamed from: androidx.savedstate.Recreator$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator$a.class */
    public static final class C2767a implements C2770b.AbstractC2772b {

        /* renamed from: a */
        final Set<String> f10489a = new HashSet();

        public C2767a(C2770b c2770b) {
            c2770b.m39933a("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.C2770b.AbstractC2772b
        /* renamed from: a */
        public final Bundle mo39931a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f10489a));
            return bundle;
        }

        /* renamed from: a */
        public final void m39938a(String str) {
            this.f10489a.add(str);
        }
    }

    public Recreator(AbstractC2774d abstractC2774d) {
        this.f10488a = abstractC2774d;
    }

    @Override // androidx.lifecycle.AbstractC1261n
    /* renamed from: a */
    public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
        if (enumC1255a == AbstractC1253j.EnumC1255a.ON_CREATE) {
            abstractC1263p.getLifecycle().removeObserver(this);
            Bundle m39934a = this.f10488a.getSavedStateRegistry().m39934a("androidx.savedstate.Restarter");
            if (m39934a == null) {
                return;
            }
            ArrayList<String> stringArrayList = m39934a.getStringArrayList("classes_to_restore");
            if (stringArrayList == null) {
                throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            }
            Iterator<String> it2 = stringArrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                try {
                    Class<? extends U> asSubclass = Class.forName(next, false, Recreator.class.getClassLoader()).asSubclass(C2770b.AbstractC2771a.class);
                    try {
                        Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                        declaredConstructor.setAccessible(true);
                        try {
                            ((C2770b.AbstractC2771a) declaredConstructor.newInstance(new Object[0])).mo39932a(this.f10488a);
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
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
