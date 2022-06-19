package p078c.p129e.p132b;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
/* renamed from: c.e.b.c */
/* loaded from: classes2-dex2jar.jar:c/e/b/c.class */
class C2082c {

    /* renamed from: a */
    static final Object[] f7207a = new Object[0];

    /* renamed from: b */
    static final Class<?>[] f7208b = new Class[0];

    /* renamed from: a */
    public static List<Class<?>> m28081a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        m28080b(cls, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    /* renamed from: b */
    private static void m28080b(Class<?> cls, HashSet<Class<?>> hashSet) {
        Class<?>[] interfaces;
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (hashSet.add(cls2)) {
                    m28080b(cls2, hashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    /* renamed from: c */
    public static boolean m28079c(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    /* renamed from: d */
    public static void m28078d(Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }
}
