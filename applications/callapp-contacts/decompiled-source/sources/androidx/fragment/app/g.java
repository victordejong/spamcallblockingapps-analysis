package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g.class */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final androidx.b.g<ClassLoader, androidx.b.g<String, Class<?>>> f2288a = new androidx.b.g<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(d(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static Class<? extends Fragment> b(ClassLoader classLoader, String str) {
        try {
            return d(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    private static Class<?> d(ClassLoader classLoader, String str) throws ClassNotFoundException {
        androidx.b.g<ClassLoader, androidx.b.g<String, Class<?>>> gVar = f2288a;
        androidx.b.g<String, Class<?>> gVar2 = gVar.get(classLoader);
        androidx.b.g<String, Class<?>> gVar3 = gVar2;
        if (gVar2 == null) {
            gVar3 = new androidx.b.g<>();
            gVar.put(classLoader, gVar3);
        }
        Class<?> cls = gVar3.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            gVar3.put(str, cls2);
        }
        return cls2;
    }

    public Fragment c(ClassLoader classLoader, String str) {
        try {
            return (Fragment) b(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
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
