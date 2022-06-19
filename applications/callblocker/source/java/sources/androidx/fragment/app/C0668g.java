package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import androidx.p013b.C0386g;
import java.lang.reflect.InvocationTargetException;
/* renamed from: androidx.fragment.app.g */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g.class */
public class C0668g {

    /* renamed from: a */
    private static final C0386g<String, Class<?>> f2368a = new C0386g<>();

    /* renamed from: a */
    public static boolean m19844a(ClassLoader classLoader, String str) {
        boolean z;
        try {
            z = Fragment.class.isAssignableFrom(m19842d(classLoader, str));
        } catch (ClassNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static Class<? extends Fragment> m19843b(ClassLoader classLoader, String str) {
        try {
            return m19842d(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    /* renamed from: d */
    private static Class<?> m19842d(ClassLoader classLoader, String str) {
        Class<?> cls = f2368a.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            f2368a.put(str, cls2);
        }
        return cls2;
    }

    /* renamed from: c */
    public Fragment mo19689c(ClassLoader classLoader, String str) {
        try {
            return m19843b(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }
}
