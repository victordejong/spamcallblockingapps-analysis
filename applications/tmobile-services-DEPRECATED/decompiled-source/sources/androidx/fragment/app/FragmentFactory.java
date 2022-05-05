package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentFactory.class */
public class FragmentFactory {

    /* renamed from: a */
    private static final SimpleArrayMap<String, Class<?>> f3758a = new SimpleArrayMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m18469b(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return Fragment.class.isAssignableFrom(m18468c(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @NonNull
    /* renamed from: c */
    private static Class<?> m18468c(@NonNull ClassLoader classLoader, @NonNull String str) throws ClassNotFoundException {
        Class<?> cls = f3758a.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            f3758a.put(str, cls2);
        }
        return cls2;
    }

    @NonNull
    /* renamed from: d */
    public static Class<? extends Fragment> m18467d(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return m18468c(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    @NonNull
    /* renamed from: a */
    public Fragment mo18434a(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return (Fragment) m18467d(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
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
