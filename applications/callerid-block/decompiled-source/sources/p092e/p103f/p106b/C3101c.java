package p092e.p103f.p106b;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
/* renamed from: e.f.b.c */
/* loaded from: classes2-dex2jar.jar:e/f/b/c.class */
class C3101c {

    /* renamed from: a */
    static final Object[] f12736a = new Object[0];

    /* renamed from: a */
    public static List<Class<?>> m221a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        m220b(cls, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    /* renamed from: b */
    private static void m220b(Class<?> cls, HashSet<Class<?>> hashSet) {
        Class<?>[] interfaces;
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (hashSet.add(cls2)) {
                    m220b(cls2, hashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    /* renamed from: c */
    public static boolean m219c(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    /* renamed from: d */
    public static void m218d(Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }
}
