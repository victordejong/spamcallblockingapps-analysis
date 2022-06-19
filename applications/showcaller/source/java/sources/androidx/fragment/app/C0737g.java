package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import p020b.p036e.C1502g;
/* renamed from: androidx.fragment.app.g */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g.class */
public class C0737g {

    /* renamed from: a */
    private static final C1502g<ClassLoader, C1502g<String, Class<?>>> f3504a = new C1502g<>();

    /* renamed from: b */
    public static boolean m32599b(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m32598c(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: c */
    private static Class<?> m32598c(ClassLoader classLoader, String str) {
        C1502g<ClassLoader, C1502g<String, Class<?>>> c1502g = f3504a;
        C1502g<String, Class<?>> c1502g2 = c1502g.get(classLoader);
        C1502g<String, Class<?>> c1502g3 = c1502g2;
        if (c1502g2 == null) {
            c1502g3 = new C1502g<>();
            c1502g.put(classLoader, c1502g3);
        }
        Class<?> cls = c1502g3.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            c1502g3.put(str, cls2);
        }
        return cls2;
    }

    /* renamed from: d */
    public static Class<? extends Fragment> m32597d(ClassLoader classLoader, String str) {
        try {
            return m32598c(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    /* renamed from: a */
    public Fragment mo32600a(ClassLoader classLoader, String str) {
        throw null;
    }
}
