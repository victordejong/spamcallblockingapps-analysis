package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0895f;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0903k;
import androidx.savedstate.C1078a;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements AbstractC0895f {

    /* renamed from: a */
    private final AbstractC1082c f3388a;

    public Recreator(AbstractC1082c abstractC1082c) {
        this.f3388a = abstractC1082c;
    }

    /* renamed from: a */
    private void m4390a(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(C1078a.AbstractC1079a.class);
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((C1078a.AbstractC1079a) declaredConstructor.newInstance(new Object[0])).m4385a(this.f3388a);
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

    @Override // androidx.lifecycle.AbstractC0901i
    /* renamed from: a */
    public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
        if (enumC0897a == AbstractC0896g.EnumC0897a.ON_CREATE) {
            abstractC0903k.getLifecycle().mo5103b(this);
            Bundle m4386a = this.f3388a.getSavedStateRegistry().m4386a("androidx.savedstate.Restarter");
            if (m4386a == null) {
                return;
            }
            ArrayList<String> stringArrayList = m4386a.getStringArrayList("classes_to_restore");
            if (stringArrayList == null) {
                throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            }
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                m4390a(it.next());
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
