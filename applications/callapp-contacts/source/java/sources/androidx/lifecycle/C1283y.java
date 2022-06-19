package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.C1232ab;
import androidx.savedstate.AbstractC2774d;
import androidx.savedstate.C2770b;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
/* renamed from: androidx.lifecycle.y */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/y.class */
public final class C1283y extends C1232ab.AbstractC1235c {

    /* renamed from: f */
    private static final Class<?>[] f4858f = {Application.class, C1281x.class};

    /* renamed from: g */
    private static final Class<?>[] f4859g = {C1281x.class};

    /* renamed from: a */
    private final Application f4860a;

    /* renamed from: b */
    private final C1232ab.AbstractC1234b f4861b;

    /* renamed from: c */
    private final Bundle f4862c;

    /* renamed from: d */
    private final AbstractC1253j f4863d;

    /* renamed from: e */
    private final C2770b f4864e;

    public C1283y(Application application, AbstractC2774d abstractC2774d) {
        this(application, abstractC2774d, null);
    }

    public C1283y(Application application, AbstractC2774d abstractC2774d, Bundle bundle) {
        C1232ab.C1233a c1233a;
        this.f4864e = abstractC2774d.getSavedStateRegistry();
        this.f4863d = abstractC2774d.getLifecycle();
        this.f4862c = bundle;
        this.f4860a = application;
        if (application != null) {
            if (C1232ab.C1233a.f4816a == null) {
                C1232ab.C1233a.f4816a = new C1232ab.C1233a(application);
            }
            c1233a = C1232ab.C1233a.f4816a;
        } else {
            c1233a = C1232ab.C1236d.m43310a();
        }
        this.f4861b = c1233a;
    }

    /* renamed from: a */
    private static <T> Constructor<T> m43273a(Class<T> cls, Class<?>[] clsArr) {
        for (Constructor<?> constructor : cls.getConstructors()) {
            Constructor<T> constructor2 = (Constructor<T>) constructor;
            if (Arrays.equals(clsArr, constructor2.getParameterTypes())) {
                return constructor2;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.C1232ab.AbstractC1235c, androidx.lifecycle.C1232ab.AbstractC1234b
    /* renamed from: a */
    public final <T extends AbstractC1231aa> T mo43274a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) mo43272a(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.C1232ab.AbstractC1235c
    /* renamed from: a */
    public final <T extends AbstractC1231aa> T mo43272a(String str, Class<T> cls) {
        AbstractC1231aa abstractC1231aa;
        boolean isAssignableFrom = C1228a.class.isAssignableFrom(cls);
        Constructor m43273a = (!isAssignableFrom || this.f4860a == null) ? m43273a(cls, f4859g) : m43273a(cls, f4858f);
        if (m43273a == null) {
            return (T) this.f4861b.mo43274a(cls);
        }
        SavedStateHandleController m43319a = SavedStateHandleController.m43319a(this.f4864e, this.f4863d, str, this.f4862c);
        if (isAssignableFrom) {
            try {
                Application application = this.f4860a;
                if (application != null) {
                    abstractC1231aa = (AbstractC1231aa) m43273a.newInstance(application, m43319a.f4799a);
                    abstractC1231aa.m43315a("androidx.lifecycle.savedstate.vm.tag", m43319a);
                    return (T) abstractC1231aa;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Failed to access ".concat(String.valueOf(cls)), e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("An exception happened in constructor of ".concat(String.valueOf(cls)), e3.getCause());
            }
        }
        abstractC1231aa = (AbstractC1231aa) m43273a.newInstance(m43319a.f4799a);
        abstractC1231aa.m43315a("androidx.lifecycle.savedstate.vm.tag", m43319a);
        return (T) abstractC1231aa;
    }

    @Override // androidx.lifecycle.C1232ab.C1237e
    /* renamed from: a */
    final void mo43275a(AbstractC1231aa abstractC1231aa) {
        SavedStateHandleController.m43321a(abstractC1231aa, this.f4864e, this.f4863d);
    }
}
