package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import androidx.p023b.C0441g;
import java.lang.reflect.InvocationTargetException;
/* renamed from: androidx.fragment.app.g */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g.class */
public class C1104g {

    /* renamed from: a */
    private static final C0441g<ClassLoader, C0441g<String, Class<?>>> f4357a = new C0441g<>();

    /* renamed from: a */
    public static boolean m43618a(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m43615d(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static Class<? extends Fragment> m43617b(ClassLoader classLoader, String str) {
        try {
            return m43615d(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    /* renamed from: d */
    private static Class<?> m43615d(ClassLoader classLoader, String str) throws ClassNotFoundException {
        C0441g<ClassLoader, C0441g<String, Class<?>>> c0441g = f4357a;
        C0441g<String, Class<?>> c0441g2 = c0441g.get(classLoader);
        C0441g<String, Class<?>> c0441g3 = c0441g2;
        if (c0441g2 == null) {
            c0441g3 = new C0441g<>();
            c0441g.put(classLoader, c0441g3);
        }
        Class<?> cls = c0441g3.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            c0441g3.put(str, cls2);
        }
        return cls2;
    }

    /* renamed from: c */
    public Fragment mo43616c(ClassLoader classLoader, String str) {
        try {
            return m43617b(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
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
