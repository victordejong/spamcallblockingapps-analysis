package androidx.fragment.app;

import d.e.g;
/* renamed from: androidx.fragment.app.f */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f.class */
public class C0321f {

    /* renamed from: a */
    private static final g<String, Class<?>> f1888a = new g<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m13270b(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m13269c(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: c */
    private static Class<?> m13269c(ClassLoader classLoader, String str) {
        g<String, Class<?>> gVar = f1888a;
        Class<?> cls = (Class) gVar.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            gVar.put(str, cls2);
        }
        return cls2;
    }

    /* renamed from: d */
    public static Class<? extends Fragment> m13268d(ClassLoader classLoader, String str) {
        try {
            return m13269c(classLoader, str);
        } catch (ClassCastException e) {
            final String str2 = "Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment";
            throw new RuntimeException(str2, e) { // from class: androidx.fragment.app.Fragment$InstantiationException
            };
        } catch (ClassNotFoundException e2) {
            final String str3 = "Unable to instantiate fragment " + str + ": make sure class name exists";
            throw new RuntimeException(str3, e2) { // from class: androidx.fragment.app.Fragment$InstantiationException
            };
        }
    }

    /* renamed from: a */
    public Fragment m13271a(ClassLoader classLoader, String str) {
        throw null;
    }
}
