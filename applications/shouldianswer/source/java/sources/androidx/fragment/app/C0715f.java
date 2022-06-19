package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import androidx.p014c.C0387g;
import java.lang.reflect.InvocationTargetException;
/* renamed from: androidx.fragment.app.f */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f.class */
public class C0715f {

    /* renamed from: a */
    private static final C0387g<String, Class<?>> f2330a = new C0387g<>();

    /* renamed from: a */
    public static boolean m5636a(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m5634d(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static Class<? extends Fragment> m5635b(ClassLoader classLoader, String str) {
        try {
            return m5634d(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    /* renamed from: d */
    private static Class<?> m5634d(ClassLoader classLoader, String str) {
        Class<?> cls = f2330a.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            f2330a.put(str, cls2);
        }
        return cls2;
    }

    /* renamed from: c */
    public Fragment mo5479c(ClassLoader classLoader, String str) {
        try {
            return m5635b(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
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
