package p1727n3.p1859r.p1860a;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment$j;
import java.lang.reflect.InvocationTargetException;
import p1727n3.p1788g.C26187h;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.r.a.t */
/* loaded from: classes-dex2jar.jar:n3/r/a/t.class */
public class C26957t {
    private static final C26187h<ClassLoader, C26187h<String, Class<?>>> sClassCacheMap = new C26187h<>();

    public static boolean isFragmentClass(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(loadClass(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private static Class<?> loadClass(ClassLoader classLoader, String str) throws ClassNotFoundException {
        C26187h<ClassLoader, C26187h<String, Class<?>>> c26187h = sClassCacheMap;
        C26187h<String, Class<?>> orDefault = c26187h.getOrDefault(classLoader, null);
        C26187h<String, Class<?>> c26187h2 = orDefault;
        if (orDefault == null) {
            c26187h2 = new C26187h<>();
            c26187h.put(classLoader, c26187h2);
        }
        Class<?> orDefault2 = c26187h2.getOrDefault(str, null);
        Class<?> cls = orDefault2;
        if (orDefault2 == null) {
            cls = Class.forName(str, false, classLoader);
            c26187h2.put(str, cls);
        }
        return cls;
    }

    public static Class<? extends Fragment> loadFragmentClass(ClassLoader classLoader, String str) {
        try {
            return loadClass(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment$j(C22128a.m8725C2("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment$j(C22128a.m8725C2("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }

    public Fragment instantiate(ClassLoader classLoader, String str) {
        try {
            return loadFragmentClass(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new Fragment$j(C22128a.m8725C2("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new Fragment$j(C22128a.m8725C2("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment$j(C22128a.m8725C2("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment$j(C22128a.m8725C2("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }
}
