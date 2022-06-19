package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0522h;
import androidx.lifecycle.AbstractC0524j;
import androidx.lifecycle.C0525k;
import androidx.savedstate.C0657a;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements AbstractC0522h {

    /* renamed from: a */
    public final AbstractC0661c f2556a;

    /* renamed from: androidx.savedstate.Recreator$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator$a.class */
    public static final class C0656a implements C0657a.AbstractC0659b {

        /* renamed from: a */
        public final Set<String> f2557a = new HashSet();

        public C0656a(C0657a c0657a) {
            c0657a.m7514b("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.C0657a.AbstractC0659b
        /* renamed from: a */
        public Bundle mo3371a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f2557a));
            return bundle;
        }
    }

    public Recreator(AbstractC0661c abstractC0661c) {
        this.f2556a = abstractC0661c;
    }

    @Override // androidx.lifecycle.AbstractC0522h
    /* renamed from: d */
    public void mo7489d(AbstractC0524j abstractC0524j, AbstractC0516f.EnumC0518b enumC0518b) {
        if (enumC0518b == AbstractC0516f.EnumC0518b.ON_CREATE) {
            C0525k c0525k = (C0525k) abstractC0524j.getLifecycle();
            c0525k.m7989d("removeObserver");
            c0525k.f2037a.mo1887e(this);
            Bundle m7515a = this.f2556a.getSavedStateRegistry().m7515a("androidx.savedstate.Restarter");
            if (m7515a == null) {
                return;
            }
            ArrayList<String> stringArrayList = m7515a.getStringArrayList("classes_to_restore");
            if (stringArrayList == null) {
                throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            }
            Iterator<String> it2 = stringArrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                try {
                    Class<? extends U> asSubclass = Class.forName(next, false, Recreator.class.getClassLoader()).asSubclass(C0657a.AbstractC0658a.class);
                    try {
                        Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                        declaredConstructor.setAccessible(true);
                        try {
                            ((C0657a.AbstractC0658a) declaredConstructor.newInstance(new Object[0])).mo7512a(this.f2556a);
                        } catch (Exception e) {
                            throw new RuntimeException(C1676a.m4789h("Failed to instantiate ", next), e);
                        }
                    } catch (NoSuchMethodException e2) {
                        StringBuilder m8752j = C0082b.m8752j("Class");
                        m8752j.append(asSubclass.getSimpleName());
                        m8752j.append(" must have default constructor in order to be automatically recreated");
                        throw new IllegalStateException(m8752j.toString(), e2);
                    }
                } catch (ClassNotFoundException e3) {
                    throw new RuntimeException(C0082b.m8755g("Class ", next, " wasn't found"), e3);
                }
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
