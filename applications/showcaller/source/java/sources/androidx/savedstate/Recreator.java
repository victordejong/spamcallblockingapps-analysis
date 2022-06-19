package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements AbstractC0795f {

    /* renamed from: d */
    private final AbstractC1047c f4566d;

    /* renamed from: androidx.savedstate.Recreator$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator$a.class */
    public static final class C1041a implements SavedStateRegistry.AbstractC1044b {

        /* renamed from: a */
        final Set<String> f4567a = new HashSet();

        public C1041a(SavedStateRegistry savedStateRegistry) {
            savedStateRegistry.m31188d("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.SavedStateRegistry.AbstractC1044b
        /* renamed from: a */
        public Bundle mo31185a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f4567a));
            return bundle;
        }

        /* renamed from: b */
        public void m31192b(String str) {
            this.f4567a.add(str);
        }
    }

    public Recreator(AbstractC1047c abstractC1047c) {
        this.f4566d = abstractC1047c;
    }

    /* renamed from: h */
    private void m31193h(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AbstractC1043a.class);
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((SavedStateRegistry.AbstractC1043a) declaredConstructor.newInstance(new Object[0])).mo31186a(this.f4566d);
                } catch (Exception e) {
                    throw new RuntimeException("Failed to instantiate " + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("Class" + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("Class " + str + " wasn't found", e3);
        }
    }

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_CREATE) {
            abstractC0797h.mo32372a().mo32396c(this);
            Bundle m31191a = this.f4566d.mo31180r().m31191a("androidx.savedstate.Restarter");
            if (m31191a == null) {
                return;
            }
            ArrayList<String> stringArrayList = m31191a.getStringArrayList("classes_to_restore");
            if (stringArrayList == null) {
                throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            }
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                m31193h(it.next());
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
