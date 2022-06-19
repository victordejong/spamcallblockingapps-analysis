package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0863d;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0869h;
import androidx.savedstate.C1059a;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements AbstractC0863d {

    /* renamed from: a */
    private final AbstractC1063c f3598a;

    public Recreator(AbstractC1063c abstractC1063c) {
        this.f3598a = abstractC1063c;
    }

    /* renamed from: a */
    private void m18235a(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(C1059a.AbstractC1060a.class);
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((C1059a.AbstractC1060a) declaredConstructor.newInstance(new Object[0])).m18231a(this.f3598a);
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

    @Override // androidx.lifecycle.AbstractC0867f
    /* renamed from: a */
    public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
        if (enumC0865a != AbstractC0864e.EnumC0865a.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        abstractC0869h.mo19203b().mo19214b(this);
        Bundle m18232a = this.f3598a.mo18225e().m18232a("androidx.savedstate.Restarter");
        if (m18232a == null) {
            return;
        }
        ArrayList<String> stringArrayList = m18232a.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            m18235a(it.next());
        }
    }
}
