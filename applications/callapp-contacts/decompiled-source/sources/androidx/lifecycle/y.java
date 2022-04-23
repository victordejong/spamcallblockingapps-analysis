package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.ab;
import androidx.savedstate.b;
import androidx.savedstate.d;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/y.class */
public final class y extends ab.c {
    private static final Class<?>[] f = {Application.class, x.class};
    private static final Class<?>[] g = {x.class};

    /* renamed from: a  reason: collision with root package name */
    private final Application f2599a;

    /* renamed from: b  reason: collision with root package name */
    private final ab.b f2600b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f2601c;

    /* renamed from: d  reason: collision with root package name */
    private final j f2602d;
    private final b e;

    public y(Application application, d dVar) {
        this(application, dVar, null);
    }

    public y(Application application, d dVar, Bundle bundle) {
        ab.b bVar;
        this.e = dVar.getSavedStateRegistry();
        this.f2602d = dVar.getLifecycle();
        this.f2601c = bundle;
        this.f2599a = application;
        if (application != null) {
            if (ab.a.f2563a == null) {
                ab.a.f2563a = new ab.a(application);
            }
            bVar = ab.a.f2563a;
        } else {
            bVar = ab.d.a();
        }
        this.f2600b = bVar;
    }

    private static <T> Constructor<T> a(Class<T> cls, Class<?>[] clsArr) {
        for (Constructor<?> constructor : cls.getConstructors()) {
            Constructor<T> constructor2 = (Constructor<T>) constructor;
            if (Arrays.equals(clsArr, constructor2.getParameterTypes())) {
                return constructor2;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.ab.c, androidx.lifecycle.ab.b
    public final <T extends aa> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) a(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.ab.c
    public final <T extends aa> T a(String str, Class<T> cls) {
        T t;
        boolean isAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor a2 = (!isAssignableFrom || this.f2599a == null) ? a(cls, g) : a(cls, f);
        if (a2 == null) {
            return (T) this.f2600b.a(cls);
        }
        SavedStateHandleController a3 = SavedStateHandleController.a(this.e, this.f2602d, str, this.f2601c);
        if (isAssignableFrom) {
            try {
                Application application = this.f2599a;
                if (application != null) {
                    t = (T) ((aa) a2.newInstance(application, a3.f2548a));
                    t.a("androidx.lifecycle.savedstate.vm.tag", a3);
                    return t;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Failed to access ".concat(String.valueOf(cls)), e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("An exception happened in constructor of ".concat(String.valueOf(cls)), e3.getCause());
            }
        }
        t = (T) ((aa) a2.newInstance(a3.f2548a));
        t.a("androidx.lifecycle.savedstate.vm.tag", a3);
        return t;
    }

    @Override // androidx.lifecycle.ab.e
    final void a(aa aaVar) {
        SavedStateHandleController.a(aaVar, this.e, this.f2602d);
    }
}
